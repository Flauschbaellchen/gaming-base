# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class PetModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Pet
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('사용성별', 'female')
          map('사용직업', 'class_land')
          map('타입코드', nil)
          map('육상최소레벨', nil)
          map('해상최소레벨', nil)
          map('쿨타임계열', nil)
          map('쿨타임밀초', nil)
          map('캐스팅시간밀초', nil)
          map('타입', nil)
          map('공격형타입', nil)
          map('성능', 'efficiency')
          map('펫리소스데이터C', nil)
          map('펫리소스데이터B', nil)
          map('펫리소스데이터A', nil)
          map('펫리소스데이터S', nil)
          map('펫리소스데이터SS', nil)
          map('용기', nil)
          map('인내', nil)
          map('지혜', nil)
          map('str', nil)
          map('dex', nil)
          map('con', nil)
          map('int', nil)
          map('wis', nil)
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
          map('펫봉인타임', nil)
        end
      end
    end
  end
end