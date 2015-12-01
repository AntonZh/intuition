require_relative 'table'

module Intuition
  class Sheet
    attr_reader :title

    def initialize(title)
      @title = title
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
