module Florensia
  class Description < ActiveRecord::Base
    validates :code, presence: true
    validates :code, uniqueness: true
  end
end
