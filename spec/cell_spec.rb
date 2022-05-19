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

end
