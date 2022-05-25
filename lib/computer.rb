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

  def place_ship(ship)
    if ship.length == 2
      two_coordinates = []
        until @cpu_board.valid_placement?(ship, two_coordinates)
          2.times do
            two_coordinates << coordinate_generator
          end
        end
      @cpu_board.place(ship, two_coordinates)
    elsif ship.length == 3
      three_coordinates = []
        until @cpu_board.valid_placement?(ship, three_coordinates)
          3.times do
            three_coordinates << coordinate_generator
          end
        end
      @cpu_board.place(ship, three_coordinates)
    end
  end

end
