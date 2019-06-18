require 'rspec'
require_relative '../lib/merge_sort'

describe MergeSort do
  describe 'sort' do
    it 'is a function that sorts arrays' do
      expect(MergeSort.sort([0])).to eq([0])
    end
  end

  describe 'split' do
    it 'returns the same array if it has 1 element' do
      expect(MergeSort.split([0])).to eq([0])
    end
  end
end
