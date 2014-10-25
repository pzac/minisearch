module Minisearch
  # Main interface
  #
  class Engine
    attr_reader :collection

    def initialize
      @collection = Collection.new
      @index = Index.new
    end

    def add(item)
      collection.add(item)
    end

    def total_documents
      collection.size
    end

    def add_from_file(filename)
      add(Document.from_file(filename))
    end
  end
end
