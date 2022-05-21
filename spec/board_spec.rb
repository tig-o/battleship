require './lib/board'
require 'pry'
require './lib/cell'
require './lib/ship'

RSpec.describe Board do

  it 'exists' do
    board = Board.new
    expect(board).to be_a(Board)
  end

  it 'can have a board hash where cells exist' do
    board = Board.new
    expect(board.board_hash["C4"]).to be_a(Cell)

  end
end
