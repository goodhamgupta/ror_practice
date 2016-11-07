module BookKeeping
  VERSION = 2
end

class Binary

  attr_accessor :number

  def initialize(number)
    # Function to check if the given number is valid or not
    valid = number.delete("01")
    if valid != ''
      raise ArgumentError
    end
    @number = number.to_i
  end

  def to_decimal
    decimal_number = 0
    power = 0
    while @number > 0 do
      remainder = @number%10
      decimal_number += (remainder * (2 ** power))
      power += 1
      @number /= 10
    end
    decimal_number
  end
end


Binary.new("0101").to_decimal
