# Program ot check if a sentence is a pangram or not

module BookKeeping
  VERSION = 2
end


class Pangram
	def self.is_pangram?(str)
		if str.nil?
			true
		else
			str = str.downcase() 
			print ("a".."z").all? {|c| str.count(c) <= 1}
		end
	end
end

Pangram.is_pangram?("LOL")