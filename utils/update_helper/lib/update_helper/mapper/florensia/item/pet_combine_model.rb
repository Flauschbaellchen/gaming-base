# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class PetCombineModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::PetCombine
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('타입코드', nil)
          map('효과코드', nil)
          map('증가최소값', nil)
          map('증가최대값', nil)
          map('성공확률보정', nil)
          map('소실방지', nil)
          map('감소방지', nil)
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
        end
      end
    end
  end
end