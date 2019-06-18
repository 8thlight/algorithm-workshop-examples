require 'rspec'
require_relative '../lib/merge_sort'

describe MergeSort do
  let(:merge_sort) { MergeSort.new }
  
  before(:all) do
    #merge_sort.debug_enabled = false
  end

  describe 'sort' do
    it 'is a function that sorts arrays' do
      expect(merge_sort.sort([0])).to eq([0])
    end

    it 'returns an empty array if input is empty' do
      expect(merge_sort.sort([])).to eq([])
    end

    it 'sorts an array in reverse order' do
      expect(merge_sort.sort([3, 2, 1, 0])).to eq([0, 1, 2, 3])
    end

    sorted = [-100, 0, 0, 3, 4, 5, 10, 55, 1000]

    it 'returns an identical copy of a sorted array' do
      expect(merge_sort.sort(sorted)).to eq(sorted)
    end

    it 'has the same result for each permutation of a sorted list' do
      sorted.permutation.take(100) do |permutation|
        expect(merge_sort.sort(permutation)).to eq(sorted)
      end
    end
  end

  describe 'split' do
    it 'returns the same array if it has 1 element' do
      expect(merge_sort.split([0])).to eq([0])
    end

    it 'returns arrays of the first and second element of a 2-element array' do
      expect(merge_sort.split([0, 1])).to eq([[0], [1]])
    end

    it 'returns a larger second array for inputs w/ odd counts' do
      expect(merge_sort.split([0, 1, 2])).to eq([[0], [1, 2]])
    end

    it 'splits arrays with even counts down the middle' do
      expect(merge_sort.split([0, 1, 2, 3])).to eq([[0, 1], [2, 3]])
    end

    it 'returns an empty array if input is empty' do
      expect(merge_sort.split([])).to eq([])
    end
  end

  describe 'merge' do
    it 'combines two 1-element array elements in ascending order' do
      expect(merge_sort.merge([0], [1])).to eq([0, 1])
    end

    it 'combines two 1-element array elements in ascending order when given out of order' do
      expect(merge_sort.merge([1], [0])).to eq([0, 1])
    end

    it 'combines array elements in ascending order when lesser element alternates between arrays' do
      expect(merge_sort.merge([1, 3], [0, 2])). to eq([0, 1, 2, 3])
    end

    it 'combines array elements in ascending order when lesser element is in the same array' do
      expect(merge_sort.merge([0, 1], [2, 3])).to eq([0, 1, 2, 3])
    end

    it 'combines array elements in ascending order when there are large differences in the elements' do
      expect(merge_sort.merge([1, 100], [5, 50])).to eq([1, 5, 50, 100])
    end

    it 'returns all elements of first array if second is empty' do
      expect(merge_sort.merge([1, 2], [])).to eq([1, 2])
    end

    it 'returns all elements of second array if first is empty' do
      expect(merge_sort.merge([], [3, 4])).to eq([3, 4])
    end
  end
end
