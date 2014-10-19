module Minisearch
  # Main interface
  #
  class Engine
    def initialize
      @collection = Collection.new
      @index = Index.new
    end

    def add(item)
      @collection.add(item)
    end

    def add_from_file(filename)
      add(Document.from_file(filename))
    end
  end
end
