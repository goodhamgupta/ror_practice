# Program to generate a random robot name
# 
# class Robot

module BookKeeping
	VERSION = 2
end

class Robot
  attr_accessor :name  
  def name
    @name ||= generate_name
  end

  def reset
    @name = nil
  end

  private

    def generate_name
      random_two_letters + random_three_digits
    end

    def random_two_letters
      [*('A'..'Z')].sample(2).join
    end

    def random_three_digits
      Random.srand(Random.new_seed)
      rand.to_s[4..6]
    end

end