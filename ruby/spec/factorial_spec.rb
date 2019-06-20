require 'rspec'
require_relative '../lib/factorial'

describe Factorial do
  describe 'mixin' do
    it 'adds a factorial function to ints' do
      expect(3.method(:factorial)).to be_a(Method)
    end
  end

  shared_examples_for 'factorial' do |factorial_method:|
    it 'returns 0 for 0' do
      expect(0.send(factorial_method)).to eq(0)
    end

    it 'returns 1 for 1' do
      expect(1.send(factorial_method)).to eq(1)
    end

    it 'returns 2 for 2' do
      expect(2.send(factorial_method)).to eq(2)
    end

    it 'returns 6 for 3' do
      expect(3.send(factorial_method)).to eq(6)
    end

    it 'returns 3628800 for 10' do
      expect(10.send(factorial_method)).to eq(3628800)
    end

    it 'handles big numbers' do
      expect(100.send(factorial_method)).to eq(93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000)
    end

    it 'does nothing for negative numbers' do
      expect(-1.send(factorial_method)).to eq(-1)
    end
  end

  describe 'recursive_factorial' do
    it_behaves_like 'factorial', { factorial_method: :factorial }
  end

  describe 'iterative_factorial' do
    it_behaves_like 'factorial', { factorial_method: :iterative_factorial }
  end
end
