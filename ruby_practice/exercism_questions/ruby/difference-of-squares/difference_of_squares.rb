# Program to calculate the difference of squares

module BookKeeping
  VERSION = 3
end

class Squares
	attr_accessor :range

	def initialize(range)
		@range = range
	end

	def square_of_sum
		if @range == 0
			sum = 0
		else
			sum = (1..@range).reduce(:+)**2
		end
		sum
	end

	def sum_of_squares
		if @range == 0
			sum = 0
		else
			sum = (1..@range).reduce {|sum, number| sum + (number ** 2)}
		end
		sum
	end

	def difference
		sum_of_squares = self.sum_of_squares()
		square_of_sum = self.square_of_sum()
		diff = square_of_sum - sum_of_squares
		diff
	end
end
