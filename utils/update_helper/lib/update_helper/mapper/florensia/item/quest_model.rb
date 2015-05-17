# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class QuestModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Quest
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('처분가격', 'npc_price_disposal')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('중복가능수', nil)
          map('기간제타임', 'duration')
        end
      end
    end
  end
end