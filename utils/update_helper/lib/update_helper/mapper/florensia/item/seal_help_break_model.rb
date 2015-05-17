# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class SealHelpBreakModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::SealHelpBreak
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('타입코드', nil)
          map('타입구분', nil)
          map('아이템등급', nil)
          map('봉인해제연산자', nil)
          map('봉인해제성공률', nil)
          map('옵션등급상향연산자', nil)
          map('상향수치', nil)
          map('목표옵션코드', nil)
          map('목표옵션증가수치', nil)
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