module Embulk
  module Filter

    class Affix < FilterPlugin
      Plugin.register_filter("affix", self)

      def self.transaction(config, in_schema, &control)
        task = {
          "affix" => config.param("affix", :string, default: "suffix"),
        }

        columns = []

        in_schema.each do |record|
          if task['affix'] == "suffix" then
            name = record.name + "_" + record.type.to_s[0]
          elsif task['affix'] == "prefix" then
            name = record.type.to_s[0]  + "_" + record.name
          else
            name = record.name
          end
          column = Column.new(nil, name, record.type)
          columns.push(column)
        end

        out_columns = columns

        yield(task, out_columns)
      end

      def init
        # initialization code:
        @affix = task["affix"]
      end

      def close
      end

      def add(page)
        page.each do |record|
          page_builder.add(record)
        end
      end

      def finish
        page_builder.finish
      end
    end

  end
end
