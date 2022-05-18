class Ship
  attr_reader :name, :length, :health
  def initialize(ship_name, ship_length)
    @name = ship_name
    @length = ship_length
    @health = @length
    @sunk_status = false
  end

  def sunk?
    if @health > 0
      @sunk_status
    elsif @health <= 0
      !@sunk_status
    end
  end

  def hit
    @health = @health - 1
  end

end
