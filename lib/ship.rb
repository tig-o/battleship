class Ship
  attr_reader :name, :length, :health
  def initialize(ship_name, ship_length)
    @name = ship_name
    @length = ship_length
    @health = @length
    @sunk_status = false
  end

  def sunk?
    @sunk_status
  end

  def hit
    @health = @health - 1
  end

end
