module Florensia
  class Item::Shoe < ActiveRecord::Base
    include Florensia::Concerns::Item
  end
end
