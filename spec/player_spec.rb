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
end
