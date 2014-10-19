module Minisearch
  # The corpus, ie a collection of documents
  #
  class Collection
    # Array of documents
    attr_reader :items

    def initialize
      @items = []
    end

    def add(item)
      @items << item
    end

    def size
      @items.size
    end

    private

  end
end
