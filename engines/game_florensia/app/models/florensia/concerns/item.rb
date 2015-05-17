module Florensia
  module Concerns
    module Item
      extend ActiveSupport::Concern

      included do

        has_one :item_index, as: :metadata, dependent: :destroy
        has_many :quest_references, as: :reference, dependent: :destroy
        has_one :translation, primary_key: :item_id, foreign_key: :code

        validates :item_id,
          presence: true,
          uniqueness: { case_sensitive: false },
          exclusion: { in: %w(#) }

        after_create :register_as_metadata

        # cast types to correct column values
        if self.columns.map(&:name).include?("female")
          def female=(value)
            self[:female] = case value
              when 0
                false
              when 1
                true
              else
                nil
            end
          end
        end

        if self.columns.map(&:name).include?("duration")
          def duration=(value)
            self[:duration] = value == -1 ? nil : value
          end
        end

        if self.columns.map(&:name).include?("upgrade_rule_id")
          def upgrade_rule_id=(value)
            self[:upgrade_rule_id] = value == "#" ? nil : value
          end
        end

        1.upto(60) do |i|
          if self.columns.map(&:name).include?("randombox_item_id_#{i}")
            define_method("randombox_item_id_#{i}=") do |value|
              self["randombox_item_id_#{i}".to_sym] = value == "#" ? nil : value
            end
          end
        end

        1.upto(6) do |i|
          if self.columns.map(&:name).include?("recipe_material_#{i}")
            define_method("recipe_material_#{i}=") do |value|
              self["recipe_material_#{i}".to_sym] = value == "#" ? nil : value
            end
          end
        end

        def to_param
          "#{self.id}-#{self.translation}"
        end

        private

        def register_as_metadata
          self.item_index = Florensia::ItemIndex.where(item_id: self.item_id).first_or_initialize
        end

      end
    end
  end
end