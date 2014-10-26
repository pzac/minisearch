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

    def add_from_file(filename, id: nil)
      add(Document.from_file(filename, id: id))
    end

    def regexp_search(regexp)
      re = Regexp.new(regexp)
      collection.filter do |item|
        item.text =~ re
      end.map(&:id)
    end
  end
end
