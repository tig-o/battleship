class Player
  def initialize
    @player_board = Board.new
    @player_sub = Ship.new("Submarine", 2)
    @player_cruiser = Ship.new("Cruiser", 3)
  end

  def coordinate_input
    player_coordinates = []
    user_input = gets.chomp
    player_coordinates << user_input
  end

end
