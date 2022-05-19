class Cell
  attr_reader :coordinate, :ship
  def initialize(grid_coordinate)

      @coordinate = grid_coordinate
      @is_empty = true
      ship = [] 
  end

  def empty?
      @is_empty
  end

  def place_ship(ship)

  end



end
