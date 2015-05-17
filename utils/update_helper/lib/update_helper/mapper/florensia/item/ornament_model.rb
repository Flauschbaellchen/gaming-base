# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class OrnamentModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Ornament
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용성별', 'female')
          map('사용직업', 'class_land')
          map('육상LV', 'level_land')
          map('해상LV', 'level_sea')
          map('STR', 'ability_str')
          map('DEX', 'ability_dex')
          map('CON', 'ability_con')
          map('INT', 'ability_int')
          map('WIS', 'ability_wis')
          map('VOL', 'ability_vol')
          map('가치', 'rare_grade')
          map('타입코드', nil)
          map('구분코드', nil)
          map('최대업글단계', nil)
          map('중복가능수', nil)
          map('퀘스트용', 'questitem')
          map('GM용', 'gm_only')
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('폐기물코드', nil)
          map('폐기물수량', nil)
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)
          map('개인상점거래가능', 'shopable')
          map('마항력', 'magic_defense')
          map('효과코드_1', 'bonus_code_1')
          map('수치연산자_1', 'bonus_operator_1')
          map('효과값_1', 'bonus_1')
          map('효과코드_2', 'bonus_code_2')
          map('수치연산자_2', 'bonus_operator_2')
          map('효과값_2', 'bonus_2')
          map('효과코드_3', 'bonus_code_3')
          map('수치연산자_3', 'bonus_operator_3')
          map('효과값_3', 'bonus_3')
          map('효과코드_4', 'bonus_code_4')
          map('수치연산자_4', 'bonus_operator_4')
          map('효과값_4', 'bonus_4')
          map('효과코드_5', 'bonus_code_5')
          map('수치연산자_5', 'bonus_operator_5')
          map('효과값_5', 'bonus_5')
          map('기간제타임', 'duration')
          map('귀속상태', nil)
          map('세트코드', nil)
        end
      end
    end
  end
end