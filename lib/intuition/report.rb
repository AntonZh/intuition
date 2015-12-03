require_relative 'sheet'
require_relative 'result'

module Intuition
  class Report
    attr_reader :filter
    attr_reader :context

    def initialize(filter, args = {})
      @filter = filter
      @context = args[:context]
      @sheets = []
    end

    def result
      calculate_if_needed
      @result
    end

    def f
      filter
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
      yield new_sheet
      add_sheet(new_sheet)
    end

    def add_sheet(sheet)
      @sheets << sheet
    end

    def method_missing(m, *args, &block)
      if context && context.respond_to?(m)
        context.send(m, *args, &block)
      else
        super
      end
    end
  end
end
