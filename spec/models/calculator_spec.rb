# require 'rails_helper'
require_relative './app/models/calculator'

RSpec.describe Calculator do
  describe '#calculate_tax' do
    it 'calculates tax  for income of 10,000' do
      calc = Calculator.new(10000)
      expect(calc.calculate_tax).to eq(1050)
    end

    it 'calculates tax for income of 35,000' do
      calc = Calculator.new(35000)
      expect(calc.calculate_tax).to eq(5145)
    end

    it 'calculates tax for income of 50,000' do
      calc = Calculator.new(50000)
      expect(calc.calculate_tax).to eq(8690)
    end

    it 'calculates tax for income of 100,000' do
      calc = Calculator.new(100000)
      expect(calc.calculate_tax).to eq(23170)
    end

    it 'calculates tax for income of 200,000' do
      calc = Calculator.new(200000)
      expect(calc.calculate_tax).to eq(53030)
    end
  end
end
