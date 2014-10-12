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
  end
end
