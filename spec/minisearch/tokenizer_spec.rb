require 'spec_helper'

module Minisearch
  describe Tokenizer do
    describe '#tokenize' do
      it "returns an empty array on blankish strings" do
        [nil, '', '  ', " \n"].each do |blankish|
          expect(described_class.new(blankish).tokenize).to eq([])
        end
      end

      it 'returns the tokens' do
        subject = described_class.new('foo bar')
        expect(subject.tokenize).to eq(['foo', 'bar'])
      end

      it 'returns unique tokens' do
        subject = described_class.new('foo bar foo bar')
        expect(subject.tokenize).to eq(['foo', 'bar'])
      end

      it 'returns lowercased tokens' do
        subject = described_class.new('FOO bAr')
        expect(subject.tokenize).to eq(['foo', 'bar'])
      end
    end
  end
end
