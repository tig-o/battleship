require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/computer'
require './lib/player'

RSpec.describe Player do
  it 'exists' do
    player1 = Player.new
    expect(player1).to be_a(Player)
  end

  it 'can use a board and ships' do
    player_board = Board.new
    expect(player_board).to be_a(Board)

    player_sub = Ship.new("Submarine", 2)
    expect(player_sub).to be_a(Ship)

    player_cruiser = Ship.new("Cruiser", 3)
    expect(player_cruiser).to be_a(Ship)
  end

  xit 'can place submarine on board and validate placement' do
    player1 = Player.new
    player1.place_submarine # we can test this when we create our own coordinate inputs
  end


end
