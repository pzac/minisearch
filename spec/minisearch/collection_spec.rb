require 'spec_helper'

module Minisearch
  describe Collection do
    describe '#add' do
      it 'adds generic objects to the collection' do
        subject.add('foo')
        expect(subject.items).to include('foo')
      end
    end

    describe '#size' do
      it 'returns the number of items that belong to the collection' do
        subject.add('foo')
        expect(subject.size).to eq(1)
      end
    end
  end
end
