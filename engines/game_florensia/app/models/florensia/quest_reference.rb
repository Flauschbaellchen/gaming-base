module Florensia
  class QuestReference < ActiveRecord::Base
    belongs_to :quest
    belongs_to :reference, polymorphic: true
  end
end
