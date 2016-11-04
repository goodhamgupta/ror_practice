class HelloWorld
  def self.hello(argument="")
    if argument.length < 1
    	"Hello, World!"
    else
    	"Hello, #{argument}!"
    end
  end
end
