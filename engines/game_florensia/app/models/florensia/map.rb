module Florensia
  class Map < ActiveRecord::Base
    belongs_to :map
    has_many :quests
    validates :area_code, :img_code, :ltwh, presence: true
  end
end
