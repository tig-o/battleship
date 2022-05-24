class Cell
  attr_reader :coordinate, :ship
  def initialize(grid_coordinate)
    @coordinate = grid_coordinate
    @ship = nil # created a path and forcing it to be nil by default
    @fired_upon = false

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

  def fired_upon?
    if @fired_upon == false
      false
    elsif @fired_upon != false
      true
    end
  end

  def fire_upon
    if empty? == true
      @fired_upon = true
    elsif empty? == false
      @fired_upon = true
      @ship.hit
    end
  end

  def render #BOOLEAN
    if @fired_upon == false # the cell has not been fired upon
      "."
    elsif @fired_upon == true && @ship == nil # if the cell has been fired upon and it does not contain a ship
      "M"
    # elsif boolean == true
    #   "S"
  elsif @fired_upon == true && @ship != nil && @ship.health != 0# “H” if the cell has been fired upon and it contains a ship (the shot was a hit).
      "H"
    elsif @fired_upon == true && @ship != nil && @ship.health ==0
      "X"
    end

  end

end
