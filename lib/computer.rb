class Computer

  def initialize
    @cpu_board = Board.new
    @cpu_sub = Ship.new("Submarine", 2)
    @cpu_cruiser = Ship.new("Cruiser", 3)
  end

  def coordinate_generator
    random_num = rand(1..4).to_s
    random_letter = ["A", "B", "C", "D"].shuffle.first
    random_letter + random_num
  end

  def place_cruiser(cruiser)
    three_coordinates = []
      until @cpu_board.valid_placement?(cruiser, three_coordinates)
        1.times do
          three_coordinates = []
          three_coordinates << coordinate_generator
          three_coordinates << coordinate_generator
          three_coordinates << coordinate_generator
        end
      end
    @cpu_board.place(cruiser, three_coordinates)
  end

  def place_submarine(sub)
    two_coordinates = []
      until @cpu_board.valid_placement?(sub, two_coordinates)
        1.times do
          two_coordinates = []
          two_coordinates << coordinate_generator
          two_coordinates << coordinate_generator
        end
      end
    @cpu_board.place(sub, two_coordinates)
  end

end
