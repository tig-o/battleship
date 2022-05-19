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

  it "has a ship" do
    cell = Cell.new("B4")
    expect(cell.ship).to eq(nil)
  end

  it "can be empty" do
    cell = Cell.new("B4")
    expect(cell.empty?).to eq(true)
  end

  it "can occupy cell with a ship" do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)

    
    expect(cell.ship).to eq(cruiser)

  end

end
