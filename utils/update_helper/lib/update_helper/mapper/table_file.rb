module UpdateHelper
  module Mapper
    module TableFile
      extend ActiveSupport::Concern

      included do

        attr_accessor :current_model

        class_attribute :setting, instance_writer: false, instance_predicate: false
        self.setting = Hash.new

        self.setting[:ignore_unknown] = false
        self.setting[:partial] = false
        self.setting[:delete_all] = false
        self.setting[:mass_import] = false
        self.setting[:force_check] = false
        self.setting[:inspect_invalids] = false


        self.setting[:table_header] = []
        self.setting[:before_load] = []
        self.setting[:after_save] = []

        self.setting[:model] = nil
        self.setting[:primary_key] = nil

        def self.model(model)
          self.setting[:model] = model
        end

        def self.partial(partial)
          self.setting[:partial] = partial
        end

        def self.primary_key(key)
          self.setting[:primary_key] = key
        end

        def self.delete_all(bool)
          self.setting[:delete_all] = bool
        end

        def self.mass_import(bool)
          self.setting[:mass_import] = bool
        end

        def self.ignore_unknown(bool)
          self.setting[:ignore_unknown] = bool
        end

        def self.force_check(bool)
          self.setting[:force_check] = bool
        end

        def self.show_invalids(bool)
          self.setting[:inspect_invalids] = bool
        end

        def self.map(src_column, dest_column)
          #error "#{self}: #{self.setting[:table_header].inspect}"
          dest_column.downcase! if dest_column #columns should be always lower-case
          self.setting[:table_header] << [src_column, dest_column]
        end

        def self.before_load(&block)
          self.setting[:before_load].push(block)
        end

        def self.after_save(&block)
          self.setting[:after_save].push(block)
        end

        def load(header, datasets, opts={})
          self.current_model = opts[:model] || self.setting[:model]

          log "Loading into model #{self.current_model}"
          raise "Invalid Header" unless valid_header?(header)
          raise "No model specified" unless self.current_model
          raise "No primary key specified" unless self.setting[:primary_key]

          raise "Datasets need to be an array" unless Array.try_convert(datasets)
          hashed_datasets = self.map_datasets(datasets)
          ignored = 0

          self.current_model.delete_all if self.setting[:delete_all] && self.current_model

          before_load()

          #use a more efficient way to import if we purged the table first
          if self.setting[:delete_all] || self.setting[:mass_import]
            import_list = []
            hashed_datasets.each do |entry|
              n = self.current_model.new
              n.assign(entry)
              import_list << n
            end
            log "Mass-import #{import_list.length} entries..."
            self.current_model.import import_list
            log "Done"
          else 
            hashed_datasets.each_with_index do |entry, ientry|
              #debug "Incoming dataset: #{entry.inspect}"
              e = self.current_model.where(self.setting[:primary_key]=>entry[self.setting[:primary_key]]).first_or_initialize
                              
              if !e.update(entry)
                ignored += 1
                e.destroy unless e.new_record?
                if self.setting[:inspect_invalids]
                  debug "Invalid entry: #{entry.inspect}"
                end
              elsif self.setting[:primary_key]==:id
                #cruel workaround to set ID manually
                self.current_model.update_all("id = #{entry[:id]}", "id = #{e.id}")
              end

              # check if any attribute is saved correctly (integer/float errors etc.)
              if self.setting[:force_check]
                entry.each do |column, expected_value|
                  saved_value = e.send(column)
                  next if saved_value == expected_value
                  debug "Possible column-type error on #{self.current_model}##{column}: #{expected_value.inspect} => #{saved_value.inspect}"
                end
              end
              log "> Done #{ientry+1}/#{hashed_datasets.count} (#{ignored} invalid)\r"
            end
            log "> Done #{hashed_datasets.count} elements (#{ignored} invalid)"
            log ""
          end

          after_save()
          true
        end

        def valid_header?(header)
          return merge_partial_header(header) if self.setting[:partial] || self.setting[:ignore_unknown]

          oldcolumns = self.setting[:table_header].collect{|s| s.first }
          #1:1 check if not partial selected
          unless oldcolumns == header
            error "Headers changed (used 1:1 matching)"
            error "Added:   #{header - oldcolumns}"
            error "Deleted: #{oldcolumns - header}"
            return false
          end
          true        
        end

        def merge_partial_header(header)
          @table_header_full = []
          partial_pointer = 0
          header.each do |src_column|
            if self.setting[:table_header][partial_pointer] && src_column == self.setting[:table_header][partial_pointer][0]
              @table_header_full << self.setting[:table_header][partial_pointer]
              partial_pointer += 1
              next
            end
            if self.setting[:ignore_unknown]
              @table_header_full << [src_column, nil]
              next
            end
            #columns do not match, use same as source
            @table_header_full << [src_column, src_column.downcase]
          end
          #if we have any columns left, there is something wrong
          if partial_pointer < self.setting[:table_header].length
              error "Headers changed (used partial auto-building)"
              error "Partials left: #{self.setting[:table_header][partial_pointer..-1]}"
            return false
          end
          return true
        end

        def map_datasets(datasets)
          raise "Datasets need to be an array" unless Array.try_convert(datasets)
          hashed_datasets = []

          header = @table_header_full || self.setting[:table_header]

          datasets.each do |dataset|
            hashed_dataset = {}
            header.each_with_index do |column, icolumn|
              hashed_dataset[column[1].to_sym] = dataset[icolumn] unless column[1].blank? #ignore columns which maps to nil
            end
            hashed_datasets << hashed_dataset
          end
          hashed_datasets
        end

        private

        def before_load
          self.setting[:before_load].each do |block|
            block.call(self)
          end
        end

        def after_save
          self.setting[:after_save].each do |block|
            block.call(self)
          end
        end
      end
    end
  end
end