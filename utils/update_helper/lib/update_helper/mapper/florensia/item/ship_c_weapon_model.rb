# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class ShipCWeaponModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::ShipCWeapon
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('클래스', 'class_sea')
          map('장착파트', nil)
          map('육상LV', 'level_land')
          map('해상LV', 'level_sea')
          map('타입', nil)
          map('가치', 'rare_grade')
          map('무기타입', 'itemtype')
          map('공격력', 'ship_defense')
          map('폭발력', nil)
          map('충돌력', nil)
          map('관통력', nil)
          map('파괴력', nil)
          map('최대거리', 'ship_range')
          map('유효거리', nil)
          map('크리티컬', 'critical')
          map('장전속도', 'ship_reloadspeed')
          map('공격지연밀초', nil)
          map('전포수', 'ship_guns_front')
          map('측포수', 'ship_guns_side')
          map('탄속', 'ship_guns_speed')
          map('집탄범위', 'ship_hitrange')
          map('물방력', 'physical_defense')
          map('방탄력', 'protection')
          map('선체가로길이', nil)
          map('선체세로길이', nil)
          map('HP', 'ability_hp')
          map('필요선원수', nil)
          map('횡범성능', 'ship_wind_favorable')
          map('종범성능', 'ship_wind_adverse')
          map('가속력', 'ship_acceleration')
          map('정선력', 'ship_deceleration')
          map('선회력', 'ship_turnpower')
          map('EN', 'ability_en')
          map('EN회복', 'ability_en_recovery')
          map('EN소모', 'ability_en_usage')
          map('벨런스', 'balance')
          map('내구도', nil)
          map('폭발저항', nil)
          map('충돌저항', nil)
          map('관통저항', nil)
          map('파괴저항', nil)
          map('기준가격', nil)
          map('처분가격', 'npc_price_disposal')
          map('튜닝가격', 'npc_price_tuning')
          map('효과코드_1', 'bonus_code_1')
          map('효과값_1', 'bonus_1')
          map('효과코드_2', 'bonus_code_2')
          map('효과값_2', 'bonus_2')
          map('효과코드_3', 'bonus_code_3')
          map('효과값_3', 'bonus_3')
          map('효과코드_4', 'bonus_code_4')
          map('효과값_4', 'bonus_4')
          map('효과코드_5', 'bonus_code_5')
          map('효과값_5', 'bonus_5')
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