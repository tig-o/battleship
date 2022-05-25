class Turn
  def initialize
    submarine = Ship.new("Submarine", 2)
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    player = Player.new
    cpu = Computer.new
  end

  def start
    puts "Welcome to Battleship!"
    puts "Press P to play. Enter Q to quit."

    input = gets.chomp


    if input == "P"
      puts "Great"
      player_place_ships
    elsif input == "Q"
      puts "quit"
    else
      puts "Please try again"

    end
  end


  def player_place_ships
    puts "Your opponent has placed their ships on the board."
    puts "You now need to place your ships on the board."
    puts "Your Cruiser is three cells long and the Submarine is two cells long"

    # puts board.render
    #
    # puts "Enter the first cell coordinate for your Cruiser."
    # puts "Coordinates should be added from left to right, and top to bottom"
    #
    # player.coordinate_input
    #
    # puts "Now enter your second coordinate."
    #
    # player.coordinate_input
    #
    # puts "Finally enter your final coordinate."
    #
    # player.coordinate_input

  #   if clear.place_cruiser.valid == true
  #     puts "Ships have to sailed to your coordinates"
  #   elsif
  #     puts "Please enter a valid set of coordinates."
    #end


  end





end
