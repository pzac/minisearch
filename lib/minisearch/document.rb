module Minisearch
  class Document
    attr_accessor :id, :text

    def initalize(id, text)
      @id = id
      @text = text
    end

    # Id default will be the filename
    #
    def self.from_file(file, id: file)
      text = IO.read(file)
      item = new(id, text)
    end
  end
end
