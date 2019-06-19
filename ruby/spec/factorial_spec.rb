require 'rspec'
require_relative '../lib/factorial'

describe Factorial do
  describe 'mixin' do
    it 'adds a factorial function to ints' do
      expect(3.method(:factorial)).to be_a(Method)
    end
  end

  describe 'factorial' do
    it 'returns 0 for 0' do
      expect(0.factorial).to eq(0)
    end

    it 'returns 1 for 1' do
      expect(1.factorial).to eq(1)
    end

    it 'returns 2 for 2' do
      expect(2.factorial).to eq(2)
    end

    it 'returns 6 for 3' do
      expect(3.factorial).to eq(6)
    end

    it 'returns 3628800 for 10' do
      expect(10.factorial).to eq(3628800)
    end

    it 'handles big numbers' do
      expect(100.factorial).to eq(93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000)
    end
  end
end
