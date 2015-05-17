module UpdateHelper
  module Mapper
    class SimpleHash < Base

      def initialize(mappings)
        @mappings = mappings
      end

      def map(hash)
        Hash[hash.map {|k, v| [@mappings[k] || k, v] }]
      end
      
    end
  end
end