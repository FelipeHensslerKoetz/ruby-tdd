# frozen_string_literal: true

require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new }

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
end
