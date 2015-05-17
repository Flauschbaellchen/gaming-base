# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class MaterialModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Material
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용구분', nil)
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)
          map('개인상점거래가능', 'shopable')
          map('중복가능수', nil)
          map('퀘스트용', 'questitem')
          map('기간제타임', 'duration')
          map('가치', 'rare_grade')
        end
      end
    end
  end
end