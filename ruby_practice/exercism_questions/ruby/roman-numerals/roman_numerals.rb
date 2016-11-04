module BookKeeping
	VERSION = 2
end

class Roman
	attr_accessor :number

	def initialize(number)
		@number = number
	end

    def to_roman
        temp_number = @number
    	number_mapping = {
                        1000=> "M", 900=> "CM", 500=> "D", 400=> "CD", 100=> "C",
                        90=> "XC", 50=> "L", 40=> "XL", 10=> "X", 9=> "IX", 5=> "V",
                        4=> "IV", 1=> "I"
                    }
        result = ""
        number_mapping.each() do |key, value|
        	count = Integer(temp_number/key)
        	result.concat(value * count)
        	temp_number -= key * count
        end
        result
    end
end
