# Program to perform RLE

module BookKeeping
  VERSION = 2
end
class RunLengthEncoding
  def self.encode(string)
    count = 0
    result = ""
    string.split("").each_with_index do |letter, char_index|
      count += 1
      if string[char_index+1] != letter
        if count == 1
          result.concat(letter)
        else
          result.concat(count.to_s + letter)
        end
        count = 0
      end
    end
    result
  end

  def self.decode(string)
    result = ""
    string.split("").each_cons(2) do |count, letter|
      result.concat(letter * count.to_i)
    end
    result
  end
end

