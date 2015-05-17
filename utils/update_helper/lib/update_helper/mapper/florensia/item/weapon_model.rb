# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class WeaponModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Weapon
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용성별', 'female')
          map('사용직업', 'class_land')
          map('착용등급', nil)
          map('가치', 'rare_grade')
          map('장착파트', nil)
          map('무기타입', 'itemtype')
          map('상의타입', nil)
          map('양손사용', 'two_handed')
          map('탄타입', nil)
          map('물공력', 'defense')
          map('물방력', 'physical_defense')
          map('물공쿨타임밀초', 'attack_speed')
          map('물공거리', nil)
          map('마항력', 'magic_defense')
          map('물공명', nil)
          map('물공피', nil)
          map('크리티컬', 'critical')
          map('물공모션타임밀초', nil)
          map('최대업글단계', nil)
          map('탄소모량', nil)
          map('정령탄소모량', nil)
          map('중복가능수', nil)
          map('퀘스트용', 'questitem')
          map('판매가격', 'npc_price')
          map('처분가격', 'npc_price_disposal')
          map('효과코드_1st', nil)
          map('효과값_1st', nil)
          map('효과코드_2nd', nil)
          map('효과값_2nd', nil)
          map('효과코드_3rd', nil)
          map('효과값_3rd', nil)
          map('매매가능', 'tradable')
          map('버림가능', nil)
          map('교환가능', 'exchangeable')
          map('보관가능', nil)

        end
      end
    end
  end
end