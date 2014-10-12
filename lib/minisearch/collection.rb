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

    private

    def
  end
end
