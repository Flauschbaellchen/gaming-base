module Florensia
  class Item::Recipe < ActiveRecord::Base
    include Florensia::Concerns::Item
  end
end
