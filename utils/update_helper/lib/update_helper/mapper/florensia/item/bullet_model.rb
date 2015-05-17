# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class BulletModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Bullet
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용가능무기', nil)
          map('제한레벨', nil)
          map('최대탄수', 'explosive_radius')
          map('최대중복개수', nil)
          map('물공력', 'defense')
          map('속성타입', nil)
          map('속공력', nil)
          map('추가사거리', nil)
          map('추가밸런스', nil)
          map('폭발반경', nil)
          map('지속시간밀초', nil)
          map('지속효과코드', nil)
          map('수치연산자', nil)
          map('지속효과값', nil)
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)
          map('개인상점거래가능', 'shopable')
          map('퀘스트용', 'questitem')
          map('기간제타임', 'duration')
        end
      end
    end
  end
end