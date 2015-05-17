require_dependency "florensia/application_controller"

module Florensia
  class ItemsController < ApplicationController

    def index
      @items = ItemIndex.pluck(:metadata_type).uniq.sort
    end

  end
end
