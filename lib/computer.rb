class Computer

  def initialize
    @cpu_board = Board.new
    @cpu_sub = Ship.new("Submarine", 2)
    @cpu_cruiser = Ship.new("Cruiser", 3)
  end

  def coordinate_generator
    random_num = rand(1..4).to_s
    random_letter = ["A", "B", "C", "D"].shuffle.first
    random_element = random_letter + random_num
  end

end
