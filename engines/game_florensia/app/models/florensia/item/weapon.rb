module Florensia
  class Item::Weapon < ActiveRecord::Base
    include Florensia::Concerns::Item
  end
end
