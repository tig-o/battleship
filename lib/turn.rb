class Turn
  def initialize
    @submarine = Ship.new("Submarine", 2)
    @cruiser = Ship.new("Cruiser", 3)
    @cpu_board = Board.new
    @player_board = Board.new
    @player = Player.new
    @cpu = Computer.new
  end

  def start
    system("clear")
    puts "Welcome to Battleship!"
    puts "Press P to play. Enter Q to quit."
    input = gets.chomp
    if input == "p"
      puts "Great, lets begin the game."
      computer_place_ships
    else input == "q"
      puts "Ok have a great day!"
    end
  end

  def computer_place_ships
    puts "Computer is taking their turn"
    @cpu.place_cruiser(@cruiser)
    @cpu.place_submarine(@submarine)
    puts "======================= Computer Board Below ======================="
    puts @cpu_board.render
    player_place_ships
  end

  def player_place_ships
    puts "  "
    puts "Your opponent has placed their ships on the board."
    puts "Now place place your ships on the board."
    puts "Your Cruiser is three cells long and the Submarine is two cells long."

    puts "======================= Player Board Below ======================="
    puts @player_board.render

    puts "Enter the first cell coordinate for your Cruiser."
    puts "Remember that coordinates should be added from left to right or top to bottom."
    @player.coordinate_input

    puts "======================= Player Board Below ======================="
    puts @player_board.render
    puts "Now enter your second coordinate."
    @player.coordinate_input

    puts "======================= Player Board Below ======================="
    puts @player_board.render
    puts "Finally enter your final coordinate."
    @player.coordinate_input

  #   if clear.place_cruiser.valid == true
  #     puts "Ships have to sailed to your coordinates"
  #   elsif
  #     puts "Please enter a valid set of coordinates."
    #end
  end

end
