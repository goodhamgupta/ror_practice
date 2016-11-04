# Program to implement Seive of Erathsenes

module BookKeeping
  VERSION = 1
end

require 'prime'
class Sieve
	attr_accessor :number

	def initialize(number)
		@number = number
	end

	def primes
		primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= @number}
		primes
	end
end

