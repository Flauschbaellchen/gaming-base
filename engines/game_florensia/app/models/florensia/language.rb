module Florensia
  class Language < ActiveRecord::Base
    validates :name, presence: true
  end
end
