# Program to calculate the hamming distance

module BookKeeping
  VERSION = 3
end
class Hamming
	def self.compute(first_string, second_string)
		# Base Case
		if first_string.length != second_string.length
			raise ArgumentError
		end
		count = 0
		string_iterator = second_string.each_char()
		first_string.each_char { |char1|
			char2 = string_iterator.next()
			if char1 != char2
				count = count + 1
			end
		}
		count
	end
end
