# Program to calculate the number of grains placed on the chessboard

class Grains
    def self.square(number)
      grain_value_mapping = []
      grain_value_mapping[0] = 1
      grain_value_mapping[1] = 2
      if number > 1
        (2..number-1).each do |index|
          grain_value_mapping[index] = grain_value_mapping[index-1]**2
        end
      end
      grain_value_mapping[number-1]
    end
end

Grains.square(10)