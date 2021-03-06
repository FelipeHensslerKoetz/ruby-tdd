# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator do
  subject(:calc) { described_class.new }

  before(:context) do
    puts 'Before context'
  end

  # before(:all) dos
    #puts 'Before all'
  #end

  #before(:each) do
    #puts 'Before each'
  #end

  around(:each) do |test|
    puts 'Before (around)'
    test.run
    puts 'After (around)'
  end

  context '#sum' do
    it 'with postive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -10)
      expect(result).to eq(-15)
    end

    it 'with a postive and a negative number' do
      result = calc.sum(-5, 10)
      expect(result).to eq(5)
    end

    it 'future test'
    xit 'skip this test'
  end

  context '#divide' do
    it 'with 0 as the denominator' do
      expect { subject.divide(1, 0) }.to raise_exception
      expect { subject.divide(1, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.divide(1, 0) }.to raise_error('divided by 0')
      expect { subject.divide(1, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.divide(1, 0) }.to raise_error(/divided/)
    end
  end
end
