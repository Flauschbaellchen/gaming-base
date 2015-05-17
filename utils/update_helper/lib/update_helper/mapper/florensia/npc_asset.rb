# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      class NpcAsset
        include UpdateHelper::Mapper::TableFile

        model ::Florensia::Npc
        partial false
        primary_key :npc_id

        map('코드', 'npc_id')
        map('이름', nil)
        map('모델명', 'image_id')
        map('스케일', nil)
        map('데미지이펙트', nil)
        map('데미지사운드', nil)
        map('크리티컬이펙트', nil)
        map('크리티컬사운드', nil)
        map('데미지더미', nil)
        map('발사체모델', nil)
        map('발사체이펙트', nil)
        map('발사형태', nil)
        map('발사체속도', nil)
        map('발사체사운드', nil)
        map('발사체유무', nil)
        map('발사체데미지이펙트', nil)
        map('발사체데미지사운드', nil)
        map('발사체크리티컬이펙트', nil)
        map('발사체크리티컬사운드', nil)
        map('발사체데미지더미', nil)
        map('공격로테이션유무', nil)

      end
    end
  end
end