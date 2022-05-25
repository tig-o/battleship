require './lib/ship'
require './lib/turn'
require './lib/player'
require './lib/cell'
require './lib/board'
require './lib/computer'



  board = Board.new
  submarine = Ship.new("Submarine", 2)
  cruiser = Ship.new("Cruiser", 3)
  player = Player.new
  cpu = Computer.new
  turn = Turn.new

  turn.start
  
