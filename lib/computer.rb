class Computer

  def initialize
    @cpu_board = Board.new
    @cpu_sub = Ship.new("Submarine", 2)
    @cpu_cruiser = Ship.new("Cruiser", 3)
  end


end
