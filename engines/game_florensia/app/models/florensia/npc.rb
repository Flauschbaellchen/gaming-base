module Florensia
  class Npc < ActiveRecord::Base
    has_many :store_items, dependent: :destroy
    has_many :items, through: :store_items
    has_many :quest_references, as: :reference, dependent: :destroy

    validates :npc_id, presence: true, uniqueness: { case_sensitive: false }
  end
end
