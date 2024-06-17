require 'rspec'
require_relative '../string_calculation'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      string_addition = StringCalculator.new("")
      expect(string_addition.add).to eq(0)
    end

    it 'returns the number for a single number' do
      string_addition = StringCalculator.new("5")
      expect(string_addition.add).to eq(5)
    end

    it 'returns the sum of two numbers' do
      string_addition = StringCalculator.new("1,2")
      expect(string_addition.add).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      string_addition = StringCalculator.new("1,2,3,4")
      expect(string_addition.add).to eq(10)
    end
  end
end
