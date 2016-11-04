# Program to count the occurences of each word 

module BookKeeping
  VERSION = 1
end

class Phrase
  attr_accessor :count
  def initialize(string)

    # String contains the input data
    words = string.gsub(/('\s)|(\s')|[^a-zA-Z'1-9]/, " ").gsub(/\s+/, " ").split(" ")
    @count = Hash.new(0)
    words.each do |word|
      if word.ascii_only? == true
        @count[word.downcase] += 1
      end
    end
  end
  def word_count
    @count
  end
end
