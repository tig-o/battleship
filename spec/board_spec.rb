require './lib/board'
require 'pry'

RSpec.describe Board do

  it 'exists' do
    bored = Board.new
    expect(bored).to be_a(Board)
  end

end
