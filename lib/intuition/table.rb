module Intuition
  class Table
    attr_reader :rows
    attr_reader :sorted

    def initialize(args = {})
      @rows = []
      @sorted = args.fetch(:sorted, false)
    end

    def row(*row)
      @rows << [row].flatten
    end

    def finalize
      rows.sort! if sorted
    end
  end
end
