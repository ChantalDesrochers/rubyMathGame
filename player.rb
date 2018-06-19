class Player
  attr_accessor :name, :current_score

  def initialize(name)
    @name = name
    @current_score = 3
end

def wrong_answer
  @current_score -= 1
end

def lost?
  @current_score <= 0
end

def score_summary
  puts "#{name} has a score of #{current_score}/3"
end

end
