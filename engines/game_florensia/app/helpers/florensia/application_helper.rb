module Florensia
  module ApplicationHelper

    def navigation
      proc do |primary|
        primary.item :items, 'Items', items_path
        primary.item :npcs, 'NPCs', npcs_path
        primary.item :quests, 'Quests', quests_path do |secondary|
          secondary.item :foo, "Foo", "#"
          secondary.item :bar, "bar", "#"
        end
      end
    end

  end
end
