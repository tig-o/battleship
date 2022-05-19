class Cell
  attr_reader :coordinate, :ship
  def initialize(grid_coordinate)
    @coordinate = grid_coordinate
    @ship = nil # created a path and forcing it to be nil by default
  end

  def empty?
    if @ship == nil
      true
    end
  end


end
