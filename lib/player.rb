class Player
  def initialize
    @player_board = Board.new
    @player_sub = Ship.new("Submarine", 2)
    @player_cruiser = Ship.new("Cruiser", 3)
  end
end
