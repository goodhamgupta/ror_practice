# Program to check if a given year is a leap year or not

module BookKeeping
  VERSION = 2
end

class Leap

  def self.leap?(year)
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
      print true
    else
      print false
    end
  end
end

Leap.leap?(2016)