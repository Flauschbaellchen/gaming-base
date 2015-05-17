module Florensia
  class QuestTranslation < ActiveRecord::Base
    belongs_to :language
    belongs_to :quest, primary_key: :quest_id, foreign_key: :quest_id

    nilify_blanks
    
    validates :title, presence: true
  end
end
