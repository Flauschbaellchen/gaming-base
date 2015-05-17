module Florensia
  class StoreItem < ActiveRecord::Base
    belongs_to :npc
    belongs_to :item

    validates :npc, :item, presence: true
  end
end
