module Florensia
  class Item::Material < ActiveRecord::Base
    include Florensia::Concerns::Item
  end
end
