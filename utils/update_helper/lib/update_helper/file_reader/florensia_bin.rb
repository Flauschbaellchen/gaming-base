module UpdateHelper
  module FileReader
    class FlorensiaBin < Base
      attr_reader :header, :datasets

      private
      def analyze
        debug "Analyzing #{@file}..."
        doc = ::File.open(@file, "rb")    
        bin = {
          'datasets'=>doc.read(4).unpack("l*")[0],
          'datasetslength'=>doc.read(4).unpack("l*")[0],
          'columns'=>doc.read(4).unpack("l*")[0]
        }
        
        debug "  Datasets:       #{bin['datasets']}" #Number of the datasets or "lines"
        debug "  Datasetlength:  #{bin['datasetslength']}" # Length of one dataset in bytes
        debug "  Columns:        #{bin['columns']}" # Number of the columns or "rows"
        
        columns = Array.new
        bin['columns'].times do |i|
          #columns << {'name'=>Iconv.iconv('utf-8', 'EUC-KR', doc.read(32).gsub(/\x00.*/, ""))[0].strip, 'length'=>columntypes(doc.read(4).unpack("l*")[0])}
          columns << {'name'=>doc.read(32).gsub(/\x00.*/, "").encode('utf-8', 'EUC-KR').strip, 'columntype'=>doc.read(4).unpack("l*")[0]}
        end
        #debug "  --- HEADER (#{columns.length})---"
        #debug "  #{columns.collect{|x| "#{x['name']} (#{x['columntype']})"}.join(", ")}"
        debug "  Headers found:  #{columns.length}/#{bin['columns']}"
        @header = columns.collect{|x| x['name']}
        
        @datasets = Array.new
        bin['datasets'].times do |d|
          #debug "  #{d+2} -->"
          trash = doc.read(4)
          dataset = Array.new
          columns.each do |c|
            data = doc.read(columntypes(c['columntype']))
            case c['columntype']
            when 3, 4, 5
              #definitely, it is a string
              #debug "  Value: #{data.inspect}"
              begin 
              #dataset << Iconv.iconv('utf-8', 'EUC-KR', data.gsub(/\x00.*/, ""))[0].chomp
              dataset << data.gsub(/\x00.*/, "").encode('utf-8', 'EUC-KR').chomp
              rescue
                #workaround for strings with the 2 bytes are invalid (c_CloakItemRes.bin, l.1198-1212, "떤무늬기모노(검은색)#)
                #dataset << Iconv.iconv('utf-8', 'EUC-KR', data[2..(data.length-1)].gsub(/\x00.*/, ""))[0].chomp
                dataset << data[2..(data.length-1)].gsub(/\x00.*/, "").encode('utf-8', 'EUC-KR').chomp
              end
            when 2 # Boolean
              dataset << !data.unpack("L")[0].zero?
            when 1 # Float
              dataset << data.unpack("f")[0]
            when 0 # Integer
              dataset << data.unpack("l")[0]
            end
          end
          #debug dataset
          @datasets << dataset
          #debug "  <--"
        end
        
        #debug "  --- DATASETS (#{datasets.length})---"
        #debug "  #{datasets.collect{|x| x.join(",")}.join("\n")}"
        
        debug "  Datasets found: #{datasets.length}/#{bin['datasets']}"
        #@datasets = "#{datasets.collect{|x| x.join("\t")}.join("\n")}"
      end

      def columntypes(t)
        case(t)
          when 0
            4
          when 1
            4
          when 2
            4
          when 3
            12
          when 4
            32
          when 5
            128
          else
            0
        end
      end
    end
  end
end