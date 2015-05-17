# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class CrewPotionModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::CrewPotion
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용성별', 'female')
          map('사용직업', 'class_land')
          map('쿨타임밀초', nil)
          map('타입', nil)
          map('성능', 'efficiency')
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)
          map('중복가능수', nil)
          map('퀘스트용', 'questitem')
        end
      end
    end
  end
end