# Program to calcuate when a person has lived for one gigasecond

module BookKeeping
	VERSION = 5
end

class Gigasecond
	def self.from(starting_time)
		starting_time + 1000000000
	end
end


# Gigasecond.from(Time.utc(1994, 8, 22, 14, 00, 00))
