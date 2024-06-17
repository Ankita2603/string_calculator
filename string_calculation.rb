class StringCalculator
	def initialize(string_numbers)
		@string_numbers = string_numbers
	end

	def add
		char_ar = string_numbers.chars
		sum = 0
		char_ar.each do |chr|
			int = chr.to_i
			next if int == 0
			sum += int
		end
		sum
	end
end
