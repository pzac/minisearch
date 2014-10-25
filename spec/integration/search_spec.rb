require 'spec_helper'

module Minisearch
  describe 'the search stack' do
    context 'given an index with three documents' do

      before(:all) do
        hamlet  = fixture_path 'hamlet.txt'
        othello = fixture_path 'othello.txt'
        macbeth = fixture_path 'macbeth.txt'

        @engine = Engine.new
        @engine.add_from_file(hamlet)
        @engine.add_from_file(othello)
        @engine.add_from_file(macbeth)
      end

      describe '#total_documents' do
        specify { expect(@engine.total_documents).to eq(3) }
      end
    end
  end
end
