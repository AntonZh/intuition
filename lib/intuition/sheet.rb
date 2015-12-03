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

    def table(args = {}, &block)
      if block_given?
        @table = Table.new(args)
        yield @table
        @table.finalize
      else
        if args.is_a? Array
          @table = Table.new
          args.each {|r| @table.row(r) }
          @table.finalize
        end
      end
      @table
    end

    def full_table
      [header] + table.rows
    end

    def run_conversions(*args)
    end
  end
end
