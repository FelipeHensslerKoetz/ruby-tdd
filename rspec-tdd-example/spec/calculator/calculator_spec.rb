# frozen_string_literal: true

require 'calculator'

describe Calculator do
  it 'sum method for two positive numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  specify 'sum method for two negative numbers' do
    calc = Calculator.new
    result = calc.sum(-5, -10)
    expect(result).to eq(-15)
  end

  example 'sum method for a positive number and a negative number' do
    calc = Calculator.new
    result = calc.sum(-5, 10)
    expect(result).to eq(5)
  end
end
