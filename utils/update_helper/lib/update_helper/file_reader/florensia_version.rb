module UpdateHelper
  module FileReader
    class FlorensiaVersion < Base
      attr_reader :files

      def analyze
        @files = []
        open(@file).read.split("\n").each do |line|
          if r = line.chomp.match(/^(?<name>[^|]+)\|\s\d+\s\d+\s(?<size>\d+)$/)
            @files << UpdateHelper::File.new(r[:name])
          end
        end
      end

      def find(regexp)
        r = self.files.select {|f| f.name =~ regexp}
        log "Pool: #{regexp} returned #{r.length} results"
        r
      end
    end
  end
end