class Board
  attr_reader :board_hash

  def initialize
    @board_hash = {
    "A1" => Cell.new("A1"),
    "A2" => Cell.new("A2"),
    "A3" => Cell.new("A3"),
    "A4" => Cell.new("A4"),
    "B1" => Cell.new("B1"),
    "B2" => Cell.new("B2"),
    "B3" => Cell.new("B3"),
    "B4" => Cell.new("B4"),
    "C1" => Cell.new("C1"),
    "C2" => Cell.new("C2"),
    "C3" => Cell.new("C3"),
    "C4" => Cell.new("C4"),
    "D1" => Cell.new("D1"),
    "D2" => Cell.new("D2"),
    "D3" => Cell.new("D3"),
    "D4" => Cell.new("D4"),
    }
  end

  def valid_coordinate?(grid_coordinate)
    @grid_coordinate = grid_coordinate

    if board_hash.has_key?(@grid_coordinate)
      true
    else
      false
    end
  end

  def valid_placement?(ship, coordinate_array)
    @valid_length = coordinate_array.size
    @letter_ascend = ["AB", "BC", "CD", "ABC", "BCD"]
    @num_ascend = ["12", "23", "34", "123", "234"]

    if ship.length == 2 && @valid_length == ship.length
      if coordinate_array[0][1] == coordinate_array[1][1] && @letter_ascend.include?(coordinate_array[0][0] + coordinate_array[1][0])
        true
      elsif coordinate_array[0][0] == coordinate_array[1][0] && @num_ascend.include?(coordinate_array[0][1] + coordinate_array[1][1])
        true
      else
        false
      end
    elsif ship.length == 3 && @valid_length == ship.length
      if coordinate_array[0][1] == coordinate_array[1][1] && coordinate_array[1][1] == coordinate_array[2][1] && @letter_ascend.include?(coordinate_array[0][0] + coordinate_array[1][0] + coordinate_array[2][0])
        true
      elsif coordinate_array[0][0] == coordinate_array[1][0] && coordinate_array[1][0] == coordinate_array[2][0] && @num_ascend.include?(coordinate_array[0][1] + coordinate_array[1][1] + coordinate_array[2][1])
        true
      else
        false
      end
    else
      false
    end
    end
  end
