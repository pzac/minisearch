module Minisearch
  class Document
    attr_accessor :id, :text

    def initialize(id, text)
      @id = id
      @text = text
    end

    def tokenize
      return [] if text.nil? || text.strip == ''
    end

    # Id default will be the filename
    #
    def self.from_file(file, id: file)
      text = IO.read(file)
      new(id, text)
    end
  end
end
