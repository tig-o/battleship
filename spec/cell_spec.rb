require './lib/ship'
require './lib/cell'

RSpec.describe Cell do

  it "exists" do
    cell = Cell.new("B4")
    expect(cell).to be_a(Cell)
  end

  it "has a coordinate" do
    cell = Cell.new("B4")
    expect(cell.coordinate).to eq("B4")
  end

  it "can check if ship is on cell and returns if cell is empty" do
    cell = Cell.new("B4")
    expect(cell.ship).to eq(nil)
    expect(cell.empty?).to eq(true)
  end

  it 'can place instance of a ship' do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    expect(cell.ship).to eq(cruiser)
    expect(cell.empty?).to eq(false)
  end

  it 'edge case, can place instance of a ship' do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    sub = Ship.new("Red October", 2)
    pt_boat = Ship.new("Zeus", 1)
    cell.place_ship(cruiser)
    expect(cell.ship).to eq(cruiser)
    expect(cell.empty?).to eq(false)

    cell.place_ship(nil)
    expect(cell.empty?).to eq(true)
    cell.place_ship(sub)
    expect(cell.ship).to eq(sub)
    expect(cell.empty?).to eq(false)

    cell.place_ship(nil)
    expect(cell.empty?).to eq(true)
    cell.place_ship(pt_boat)
    expect(cell.ship).to eq(pt_boat)
    expect(cell.empty?).to eq(false)
  end

end
