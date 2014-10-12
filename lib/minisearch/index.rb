module Minisearch
  # The main (inverted) index
  #
  class Index
    # Main data structure
    #
    attr_reader :dictionary

    def initialize
      @dictionary = {}
    end
  end
end
