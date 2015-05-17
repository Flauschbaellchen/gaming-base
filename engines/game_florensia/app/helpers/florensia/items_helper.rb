module Florensia
  module ItemsHelper
    def metaclass_to_linkname(classname)
      classname.demodulize.underscore
    end
  end
end
