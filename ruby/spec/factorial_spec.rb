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
  end
end
