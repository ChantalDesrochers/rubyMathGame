class TurnSwitcher
  def initialize(players)
    @players = players
  end

  def current_player
    @players[0]
  end

  def next_player
    @players.rotate!
  end
end