module Intuition
  class Sheet
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def header(header = nil)
      if header
        @header = header
      else
        @header
      end
    end

    def table
      if block_given?
        @table = Table.new
        new_table.instance_exec &block
      else
        @table
      end
    end
  end
end
