module UpdateHelper
  module FileReader
    class Base
      
      def initialize(file)
        @file = file
        analyze
      end

      def analyze
        raise "Analyze not implemented for #{self}"
      end
      private :analyze
    end
  end
end