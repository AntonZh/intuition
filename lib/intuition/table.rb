module Intuition
  class Table
    def initialize
      @rows = []
    end

    def row(*row)
      @rows << [row].flatten
    end
  end
end
