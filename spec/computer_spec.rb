require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/computer'

RSpec.describe Computer do
  it 'exists' do
    cpu = Computer.new
    expect(cpu).to be_a(Computer)
  end
end
