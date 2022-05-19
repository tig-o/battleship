class Cell
  attr_reader :coordinate, :ship
  def initialize(grid_coordinate)

      @coordinate = grid_coordinate
      @is_empty = true
  end

  def empty?
      @is_empty
  end

end
