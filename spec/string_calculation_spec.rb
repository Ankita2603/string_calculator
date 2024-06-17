require 'rspec'
require_relative '../string_calculation'

RSpec.describe StringCalculator do
	describe '#add' do
    it 'returns 0 for an empty string' do
      string_addition = StringAddition.new()
      expect(string_addition.add("")).to eq(0)
    end
	end
end
