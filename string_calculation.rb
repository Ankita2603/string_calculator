class StringCalculator
  def initialize(string_numbers)
    @string_numbers = string_numbers
  end

  def add
    return 0 if @string_numbers.empty?

    delimiter = ","
    if @string_numbers.start_with?("//")
      parts = @string_numbers.split("\n", 2)
      delimiter = parts[0][2..]
      @string_numbers = parts[1]
    end

    nums = @string_numbers.split(/[#{delimiter}\n]/).map(&:to_i)
		negatives = nums.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end
