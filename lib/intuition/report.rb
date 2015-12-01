require_relative 'sheet'
require_relative 'result'

module Intuition
  class Report
    def initialize(filter = nil)
      @filter = filter
      @sheets = []
    end

    def result
      calculate_if_needed
      @result
    end

    private

    def calculate
      raise NotImplementedError
    end

    def calculate_if_needed
      calculate unless @calculated
      @calculated = true
      @result = Result.new(@sheets)
    end

    def sheet(name, &block)
      new_sheet = Sheet.new(name)
      new_sheet.instance_exec(&block) if block_given?
      add_sheet(new_sheet)
    end

    def add_sheet(sheet)
      @sheets << sheet
    end
  end
end
