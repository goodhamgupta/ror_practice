# Program to compute factors

require 'prime'

module BookKeeping
  VERSION = 3
end

class Raindrops
	def self.convert(number)
		result = ""
		mapping = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
		prime_factors = number.prime_division()
		prime_factors.each do |factor, number|
			data = mapping[factor]
			unless data.nil? 	
				result.concat(data)
			end
		end
		if result.length < 1
			String(number)
		else
			result
		end
	end
end
