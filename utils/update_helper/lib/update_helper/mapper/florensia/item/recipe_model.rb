# encoding: utf-8

module UpdateHelper
  module Mapper
    module Florensia
      module Item
        class RecipeModel
          include UpdateHelper::Mapper::TableFile

          model ::Florensia::Item::Recipe
          partial false
          primary_key :item_id

          map('코드', 'item_id')
          map('이름', nil)
          map('결과물코드', 'recipe_target_id')
          map('결과물수량', nil)
          map('실패결과물코드', nil)
          map('실패결과물수량', nil)
          map('재료1', 'recipe_material_1')
          map('필요량1', 'recipe_requirement_1')
          map('재료2', 'recipe_material_2')
          map('필요량2', 'recipe_requirement_2')
          map('재료3', 'recipe_material_3')
          map('필요량3', 'recipe_requirement_3')
          map('재료4', 'recipe_material_4')
          map('필요량4', 'recipe_requirement_4')
          map('재료5', 'recipe_material_5')
          map('필요량5', 'recipe_requirement_5')
          map('재료6', 'recipe_material_6')
          map('필요량6', 'recipe_requirement_6')
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
          map('가치', 'rare_grade')
        end
      end
    end
  end
end