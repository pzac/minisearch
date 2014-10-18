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
  end
end
