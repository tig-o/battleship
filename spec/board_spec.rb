require './lib/board'
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

  it 'can validate array coordinates against ship length' do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.valid_placement?(cruiser, ["A1", "A2"])).to eq(false)
    expect(board.valid_placement?(submarine, ["A2", "A3", "A4"])).to eq(false)
    expect(board.valid_placement?(cruiser, ["A1", "A2", "A3"])).to eq(true)
    expect(board.valid_placement?(submarine, ["A2", "A3"])).to eq(true)
  end

  it 'can check that coordiates are valid when horizontal and vertical'  do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.valid_placement?(cruiser, ["A1", "A2", "A4"])).to eq(false)
    expect(board.valid_placement?(submarine, ["A1", "C1"])).to eq(false)
    expect(board.valid_placement?(cruiser, ["A3", "A2", "A1"])).to eq(false)
    expect(board.valid_placement?(submarine, ["C1", "B1"])).to eq(false)
  end

  it 'can check that coordinates are diagonal and return false' do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.valid_placement?(cruiser, ["A1", "B2", "C3"])).to eq(false)
    expect(board.valid_placement?(submarine, ["C2", "D3"])).to eq(false)
  end

  it 'can ensure placement is valid and return true' do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.valid_placement?(submarine, ["A1", "A2"])).to eq(true)
    expect(board.valid_placement?(cruiser, ["B1", "C1", "D1"])).to eq(true)
  end

end
