module Minisearch
  # The corpus, ie a collection of documents
  #
  class Collection
    # Array of documents
    attr_reader :items

    def initialize
      @items = []
    end

    # Adds a Document to the collection, returning the document id
    #
    def add(item)
      raise "Not a MinisearchDocument object" unless item.kind_of?(Document)
      items << item
      item.id
    end

    def size
      items.size
    end

    private

  end
end
