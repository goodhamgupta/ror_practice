# def test(coll, &block)
#   coll.each do 
#     block.call
#   end
# end

# coll = [1,2,3]
# test(coll) {puts "LOL"}

class Array
  def accumalate
    result = []
    if block_given?
        for element in self
          result.push yield element
       end
    end
    print result
  end
end

[1,2,3].accumalate(&:reverse)