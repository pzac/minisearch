module Minisearch
  class Document
    attr_accessor :id, :text

    # Ths id is optional but highly recommended. Otherwise it will be
    # generated automatically
    #
    def initialize(text, id: nil)
      @text = text
      @id = id || generate_id
    end

    def tokenize
      tokenizer.tokenize
    end

    def size
      text.size
    end

    # Id default will be the filename
    #
    def self.from_file(file, id: file)
      text = IO.read(file)
      new(text, id: id)
    end

    private

    def tokenizer
      @tokenizer ||= Tokenizer.new(text)
    end

    # Fallback method. Possible collisions.
    #
    def generate_id
      Digest::MD5.hexdigest(text)
    end

    def inspect
      "<#Document id:#{id}>"
    end
  end
end
