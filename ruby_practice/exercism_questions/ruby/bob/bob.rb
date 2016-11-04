# Program to compute bob's responses to questions


class Bob
  def hey(question)
    response = ""
    if question.strip.empty?
      'Fine. Be that way!'
    elsif question.upcase == question && !question[/[A-Z]/].nil?
      'Whoa, chill out!'
    elsif question[-1] == '?'
      'Sure.'
    else 
      'Whatever.' 
    end
  end
end

