require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/computer'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    turn = Turn.new
    expect(turn).to be_a(Turn)
  end
end
