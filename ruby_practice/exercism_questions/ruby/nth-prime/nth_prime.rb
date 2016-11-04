# Program to find the nth prime number

require "prime"

module BookKeeping
	VERSION = 1
end

class NthPrime
	def self.nth(number)
		if number == 0
			raise ArgumentError
		else
			Prime.take(number).last
		end
	end
end
