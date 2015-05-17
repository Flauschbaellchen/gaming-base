# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      class ItemAsset
        include UpdateHelper::Mapper::TableFile

        primary_key :item_id
        ignore_unknown true

        map('코드', 'item_id')
        map('모델명', 'image_character_id')
        map('아이콘', 'image_icon_id')

      end
    end
  end
end