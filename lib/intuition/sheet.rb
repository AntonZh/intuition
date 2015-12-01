require_relative 'table'

module Intuition
  class Sheet
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def header(*value)
      if value.any?
        @header = [value].flatten
      else
        @header
      end
    end

    def table(&block)
      if block_given?
        @table = Table.new
        @table.instance_exec &block
      else
        @table
      end
    end
  end
end
