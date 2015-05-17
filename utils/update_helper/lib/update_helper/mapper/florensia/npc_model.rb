# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      class NpcModel
        include UpdateHelper::Mapper::TableFile

        model ::Florensia::Npc
        partial false
        primary_key :npc_id

        map('코드', 'npc_id')
        map('이름', nil)
        map('직업', nil)
        map('NPC직업', nil)
        map('몬스터등급타입', 'npc_type')
        map('무생물', 'inanimated')
        map('필드구분', nil)
        map('함선형', nil)
        map('공중유닛', 'air')
        map('테이밍', nil)
        map('기준레벨', 'level')
        map('보상경험치', 'exp_points')
        map('보상SP', 'mana_points')
        map('몸가로길이', 'body_width')
        map('몸세로길이', 'body_height')
        map('기준최대HP', 'heal_points')
        map('회복속도', nil) #Spawntime?
        map('최소물공력', 'attack_rate_min')
        map('최대물공력', 'attack_rate_max')
        map('최소마공력', 'magic_defense_min')
        map('최대마공력', 'magic_defense_max')
        map('물방력', 'physical_defense')
        map('마항력', 'magic_defense')
        map('물공피', nil)
        map('물공명', nil)
        map('마공명', 'required_hitrate')
        map('크리성공', nil)
        map('크리저항', nil)
        map('물리공격범위', nil)
        map('몹함포갯수', 'naval_guns_count')
        map('몹함포속도', 'naval_guns_speed')
        map('몹함포집탄범위', 'naval_guns_scope')
        map('물리공격캐스팅타임밀초', nil)
        map('물리공격쿨타임밀초', 'attack_cooldown_1')
        map('물리공격모션타임밀초1', 'attack_cooldown_2')
        map('물리공격모션타임밀초2', 'attack_cooldown_3')
        map('크리공격모션타임밀초', 'attack_cooldown_4')
        map('죽는모션타임밀초', nil)
        map('죽는모션밀림구분', nil)
        map('소멸지연타임밀초', nil)
        map('선공시야', nil)
        map('반응시야', nil)
        map('요청시야', nil)
        map('귀환시야', nil)
        map('최소사거리제한', nil)
        map('기본사정거리', nil)
        map('공격거리타입', 'melee')
        map('걷기속도', nil)
        map('뛰기속도', nil)
        map('선회력', 'ship_turnpower')
        map('평상이동지연시간초', nil)
        map('평상이동단위', nil)
        map('오브젝트채팅', nil)
        map('부가Action1코드', 'action_id_1')
        map('부가Action1선택율', 'action_ratio_1')
        map('부가Action2코드', 'action_id_2')
        map('부가Action2선택율', 'action_ratio_2')
        map('원소공격력', 'attack_element')
        map('원소저항력', 'resistance_element')
        map('환영공격력', 'attack_illusion')
        map('환영저항력', 'resistance_illusion')
        map('신성공격력', 'attack_holy')
        map('신성저항력', 'resistance_holy')
        map('암흑공격력', 'attack_dark')
        map('암흑저항력', 'resistance_dark')
        map('물리속성공격력', 'attack_physical')
        map('물리속성저항력', 'resistance_physical')
        map('독속성공격력', 'attack_poison')
        map('독속성저항력', 'resistance_poison')
        map('화염속성공격력', 'attack_fire')
        map('화염속성저항력', 'resistance_fire')
        map('냉기속성공격력', 'attack_ice')
        map('냉기속성저항력', 'resistance_ice')
        map('전격속성공격력', 'attack_lightning')
        map('전격속성저항력', 'resistance_lightning')
        map('신성속성공격력', 'attack_physical_holy')
        map('신성속성저항력', 'resistance_physical_holy')
        map('암흑속성공격력', nil) #attack_dark
        map('암흑속성저항력', nil) #resistance_dark
        map('절대속성공격력', 'attack_absolute')
        map('절대속성저항력', 'resistance_absolute')

      end
    end
  end
end