module Florensia
  class Translation < ActiveRecord::Base
    validates :code, presence: true
    validates :code, uniqueness: true
  end
end
