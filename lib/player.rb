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

  def place_cruiser
    until @player_board.valid_placement?(@player_cruiser, @player_coordinates)
      puts board.render

      puts "Enter the first cell coordinate for your Cruiser."
      puts "Coordinates should be added from left to right, and top to bottom"

      player.coordinate_input

      puts "Now enter your second coordinate."

      player.coordinate_input

      puts "Finally enter your final coordinate."

      player.coordinate_input

      # @coordinate_input
    end
    @player_board.place(@player_cruiser, @player_coordinates)
  end
end
