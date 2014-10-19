require 'spec_helper'

module Minisearch
  describe Document do
    describe '.from_file' do
      it 'creates an object with the filename as id and the file contents as text' do
        file = fixture_path('hello.txt')
        item = described_class.from_file(file)
        expect(item.id).to eq(file)
        expect(item.text).to eq("hello world\n")
      end
    end

    describe '#tokenize' do
      it 'returns an empty array if the text is blank' do
        subject = described_class.new('foo', nil)
        expect(subject.tokenize).to be_empty
      end
    end
  end
end
