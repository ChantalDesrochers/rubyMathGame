require './player.rb'
require './turn_switcher.rb'
require './questions.rb'

class Game
  def initialize
   player1 = Player.new("Chantal")
   player2 = Player.new("LosaFace")

  @players = [player1, player2]
  @turn_switch = TurnSwitcher.new(@players)

end

  def play
    question = Question.new
    while not game_over?
    current_player = @turn_switch.current_player

    puts "#{current_player.name}:"

    question.generate_question(current_player)

    print_summary

    current_player = @turn_switch.next_player

 end
 puts "Game Over!"
end


  def game_over?
    @players.any? {|player| player.lost? }
  end

  def print_summary
    puts "SUMMARY"
    @players.each {|player| puts "#{player.score_summary}" }
  end

end
