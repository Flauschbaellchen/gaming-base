module Florensia
  class Item::Pet < ActiveRecord::Base
    include Florensia::Concerns::Item
  end
end
