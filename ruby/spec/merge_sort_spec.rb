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

    it 'returns arrays of the first and second element of a 2-element array' do
      expect(MergeSort.split([0, 1])).to eq([[0], [1]])
    end

    it 'returns a larger second array for inputs w/ odd counts' do
      expect(MergeSort.split([0, 1, 2])).to eq([[0], [1, 2]])
    end

    it 'splits arrays with even counts down the middle' do
      expect(MergeSort.split([0, 1, 2, 3])).to eq([[0, 1], [2, 3]])
    end

    it 'returns an empty array if input is empty' do
      expect(MergeSort.split([])).to eq([])
    end
  end

  describe 'merge' do
    it 'combines two 1-element array elements in ascending order' do
      expect(MergeSort.merge([0], [1])).to eq([0, 1])
    end

    it 'combines two 1-element array elements in ascending order when given out of order' do
      expect(MergeSort.merge([1], [0])).to eq([0, 1])
    end

    it 'combines array elements in ascending order when lesser element alternates between arrays' do
      expect(MergeSort.merge([1, 3], [0, 2])). to eq([0, 1, 2, 3])
    end

    it 'combines array elements in ascending order when lesser element is in the same array' do
      expect(MergeSort.merge([0, 1], [2, 3])).to eq([0, 1, 2, 3])
    end

    it 'combines array elements in ascending order when there are large differences in the elements' do
      expect(MergeSort.merge([1, 100], [5, 50])).to eq([1, 5, 50, 100])
    end
  end
end
