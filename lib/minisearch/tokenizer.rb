module Minisearch
  class Tokenizer
    attr_reader :raw, :tokens

    def initialize(raw)
      @raw = raw
    end

    # Returns an array of tokens
    #
    def tokenize
      return [] if blank?(text)
      text.split.uniq
    end

    def text
      @text ||= preprocess(raw)
    end

    private

    def blank?(string)
      string.nil? || string.strip == ''
    end

    # Raw text sanitization
    #
    def preprocess(string)
      return nil unless string
      # Remove leading and trailing whitespace
      string.strip \
      # Lowercase
        .downcase
    end
  end
end
