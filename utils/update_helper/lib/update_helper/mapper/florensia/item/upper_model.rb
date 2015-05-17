# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class UpperModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Upper
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
          map('업그레이드코드', 'upgrade_rule_id')
          map('장착파트', nil)
          map('무기타입', 'itemtype')
          map('상의타입', nil)
          map('양손사용', 'two_handed')
          map('탄타입', nil)
          map('최대내구도', nil)
          map('최소물공력', 'physical_defense_min')
          map('최대물공력', 'physical_defense_max')
          map('최소마공력', 'magic_defense_min')
          map('최대마공력', 'magic_defense_max')
          map('물방력', 'physical_defense')
          map('물공쿨타임밀초', 'attack_speed')
          map('물공최소거리', nil)
          map('물공최대거리', 'range')
          map('마공케스팅타임밀초', nil)
          map('마항력', 'magic_defense')
          map('물공명', nil)
          map('마공명', nil)
          map('물공피', nil)
          map('크리티컬', 'critical')
          map('물공모션타임밀초1', nil)
          map('물공모션타임밀초2', nil)
          map('크리공격모션타임밀초', nil)
          map('최대업글단계', nil)
          map('탄소모량', nil)
          map('정령탄소모량', nil)
          map('중복가능수', nil)
          map('퀘스트용', 'questitem')
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('폐기물코드', nil)
          map('폐기물수량', nil)
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
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)
          map('개인상점거래가능', 'shopable')
          map('기간제타임', 'duration')
          map('귀속상태', nil)
          map('세트코드', nil)

        end
      end
    end
  end
end