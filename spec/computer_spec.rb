require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/computer'

RSpec.describe Computer do
  it 'exists' do
    cpu = Computer.new
    expect(cpu).to be_a(Computer)
  end

  it 'can use a board and ships' do
    cpu_board = Board.new
    expect(cpu_board).to be_a(Board)

    cpu_sub = Ship.new("Submarine", 2)
    expect(cpu_sub).to be_a(Ship)

    cpu_cruiser = Ship.new("Cruiser", 3)
    expect(cpu_cruiser).to be_a(Ship)
  end

  it 'can generate random coordinates' do
    cpu = Computer.new
    board = Board.new
    expect(cpu.coordinate_generator).to be_a(String)
  end
end
