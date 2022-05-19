class Cell
  attr_reader :coordinate, :ship
  def initialize(grid_coordinate)
    @coordinate = grid_coordinate
    @ship = nil # created a path and forcing it to be nil by default
  end

  def empty?
    if @ship == nil
      true
    elsif @ship != nil
      false
    end
  end

  def place_ship(instance_of_ship)
    @ship = instance_of_ship # storing object in ship variable
  end

end
