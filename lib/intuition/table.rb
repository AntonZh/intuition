module Intuition
  class Table
    attr_reader :rows

    def initialize
      @rows = []
    end

    def row(*row)
      @rows << [row].flatten
    end
  end
end
