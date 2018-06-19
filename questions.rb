# require './game.rb/'
require './player.rb'

class Question
  # attr_accessor

  def initialize
  end

  def generate_question(current_player)
    num1 = rand(19) + 1
    num2 = rand(19) + 1
    print "What does #{num1} + #{num2} equal?"
    answer = gets.chomp.to_i
    if (num1 + num2) == answer
      puts "that's the right answer!"
    else
      puts "sorry, that ain't right"
      current_player.wrong_answer
end
end


end



# question = Question.new()
# # p question.methods
# question.generate_question
