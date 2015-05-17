module Florensia
  class Quest < ActiveRecord::Base
    validates :quest_id, :level, :xml, presence: true

    belongs_to :map
    has_many :quest_references, dependent: :destroy
    has_many :quest_translations, primary_key: :quest_id, foreign_key: :quest_id

    belongs_to :next_quest,
      class_name: "Florensia::Quest",
      primary_key: :quest_id
    belongs_to :previous_quest,
      class_name: "Florensia::Quest",
      primary_key: :quest_id
    has_many :previous_quests,
      class_name: "Florensia::Quest",
      foreign_key: :next_quest_id
    has_many :next_quests,
      class_name: "Florensia::Quest",
      foreign_key: :previous_quest_id

    belongs_to :source_npc, class_name: "Florensia::Npc"
    belongs_to :dest_npc, class_name: "Florensia::Npc"

    validates :quest_translations, presence: true
    validates :quest_id, presence: true, uniqueness: { case_sensitive: false }

    before_validation :parse_xml
    after_save :create_references


    def sea?
      self.quest_id.starts_with?('sea')
    end

    private
      def parse_xml
        doc = Nokogiri::XML(self.xml).xpath("/Quest").first
        self.map = Florensia::Map.find_by_area_code(doc.attr("SourceArea"))
        self.level = doc.xpath("OccurTerm").first.try(:attr, "Lv")
        self.previous_quest_id = doc.xpath("OccurTerm").first.try(:attr, "BeforeQuest")

        self.source_npc = Florensia::Npc.find_by_npc_id(doc.attr("SourceObject"))
        self.dest_npc = Florensia::Npc.find_by_npc_id(doc.xpath("RewardDesc").first.try(:attr, "Supplier"))

        classes = ""
        classes << "W" if doc.xpath("OccurTerm").first.try(:attr, "Class0") == "1"
        classes << "P" if doc.xpath("OccurTerm").first.try(:attr, "Class1") == "1"
        classes << "E" if doc.xpath("OccurTerm").first.try(:attr, "Class2") == "1"
        classes << "N" if doc.xpath("OccurTerm").first.try(:attr, "Class3") == "1"
        classes << "S" if doc.xpath("OccurTerm").first.try(:attr, "Class4") == "1"
        classes = "WPENS" if classes.empty?
        self.class_land = classes

        self.quest_references.clear # clean up previous imports
      end

      def create_references
        # items/NPC references in missions
        doc = Nokogiri::XML(self.xml).xpath("/Quest").first
        doc.xpath("Mission").children.each do |work|
        next unless reference_id = work.try(:attr, "WorkValue")
          # check if it's a NPC
          unless reference = Florensia::Npc.find_by_npc_id(reference_id)
            # or an item if not found
            next unless reference = Florensia::ItemIndex.find_by_item_id(reference_id)
            reference = reference.metadata
          end
          self.quest_references.create(reference: reference)
        end

        # if loots exist, we also want to reference the NPC
        doc.xpath("LootDesc/Loot").each do |loot|
          next unless npc = Florensia::Npc.find_by_npc_id(loot.try(:attr, "MonsterCode"))
          self.quest_references.create(reference: npc)
        end

        # next/prev quest
        if self.previous_quest
          self.previous_quest.next_quest = self
          self.previous_quest.save
        end
      end
  end
end
