class Player
  def initialize
    @player_board = Board.new
    @player_sub = Ship.new("Submarine", 2)
    @player_cruiser = Ship.new("Cruiser", 3)
    @player_coordinates = []
  end

  def coordinate_input
    user_input = gets.chomp
    @player_coordinates << user_input
  end

  def place_submarine
    until @player_board.valid_placement?(@player_sub, @player_coordinates)
      @coordinate_input
    end
    @player_board.place(@player_sub, @player_coordinates)
  end
end
