require 'spec_helper'

module Minisearch
  describe Collection do
    let(:document) { Document.new('hello world') }

    describe '#add' do
      it 'adds document objects to the collection' do
        subject.add(document)
        expect(subject.items).to include(document)
      end

      it 'rejects non documents' do
        expect do
          subject.add('foobar')
        end.to raise_exception
      end
    end

    describe '#size' do
      it 'returns the number of items that belong to the collection' do
        subject.add(document)
        expect(subject.size).to eq(1)
      end
    end
  end
end
