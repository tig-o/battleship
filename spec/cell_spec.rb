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

  it "can be been fired upon" do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    expect(cell.fired_upon?).to eq(false)
  end

  it "can be fired upon and lose health" do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fire_upon
    expect(cell.ship.health).to eq(2)
    expect(cell.fired_upon?).to eq(true)
  end

  it 'can render a cell and return a miss' do
    cell_1 = Cell.new("B4")
    expect(cell_1.render).to eq(".")
    cell_1.fire_upon
    expect(cell_1.render).to eq("M")
  end

  it 'can render a cell and return a hit' do
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    expect(cell_2.render).to eq(".")
    # expect(cell_2.render(true)).to eq("S")
    cell_2.fire_upon
    expect(cell_2.render).to eq("H")
    expect(cruiser.health).to eq(2)
  end

end
