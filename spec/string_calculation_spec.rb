require 'rspec'
require_relative '../string_calculation'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new("")
      expect(calculator.add).to eq(0)
    end

    it 'returns the number for a single number' do
      calculator = StringCalculator.new("5")
      expect(calculator.add).to eq(5)
    end

    it 'returns the sum of two numbers' do
      calculator = StringCalculator.new("1,2")
      expect(calculator.add).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      calculator = StringCalculator.new("1,2,3,4")
      expect(calculator.add).to eq(10)
    end

    it "returns the sum of numbers with new lines" do
      calculator = StringCalculator.new("1\n2,3")
      expect(calculator.add).to eq(6)
    end

    it "returns the sum with different delimiters" do
      calculator = StringCalculator.new("//;\n1;2")
      expect(calculator.add).to eq(3)
    end

    it "raises an error for negative numbers" do
      calculator = StringCalculator.new("1,-2,3")
      expect(calculator.add).to raise_error("Negative numbers not allowed: -2")
    end

    it "raises an error for multiple negative numbers" do
      calculator = StringCalculator.new("1,-2,-3")
      expect(calculator.add).to raise_error("Negative numbers not allowed: -2,-3")
    end
  end
end
