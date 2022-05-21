require './lib/board'
require 'pry'
require './lib/cell'
require './lib/ship'

RSpec.describe Board do

  it 'exists' do
    board = Board.new
    expect(board).to be_a(Board)
  end

  it 'can have a board hash' do
    board = Board.new
    expect(board.board_hash).to be_a(Hash)
  end

  it 'can have a board hash where cells exist' do
    board = Board.new
    expect(board.board_hash["C4"]).to be_a(Cell)
  end

  it 'can validate existing coordinates' do
    board = Board.new
   expect(board.valid_coordinate?("A1")).to eq(true)
   expect(board.valid_coordinate?("D4")).to eq(true)
   expect(board.valid_coordinate?("C3")).to eq(true)
  end

  it 'can validate nonexisting coordinates' do
    board = Board.new
   expect(board.valid_coordinate?("A5")).to eq(false)
   expect(board.valid_coordinate?("E1")).to eq(false)
   expect(board.valid_coordinate?("A22")).to eq(false)
  end

end
