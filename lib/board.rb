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
    if @valid_length == ship.length
      true
    else
      return false
    end

    if @valid_length == 2
      if coordinate_array[0][0] = coordinate_array[1][0] && coordinate_array[0][1] = coordinate_array[1][1]
        false
      else
        true
      end
    end

    if @valid_length == 3
      if coordinate_array[0][0] == coordinate_array[1][0] && coordinate_array[1][1] = coordinate_array[2][1]
        false
      else
        true
      end
    end
  end


  # elsif coordinate_array[1][0] = coordinate_array[1][1] = coordinate_array[1][2]
  #   true
    #it cannot be 1 1 1 where A A A and it cannot be A B C  where 1 2 3. but i can be A A A where 1 2 3 and it can be 1 1 1 where A B C. i felt really silly typing that

    # if coordinate_array[0][0] == coordinate_array[1][0] == coordinate_array[2][0] && coordinate_array[0][0] +2 == coordinate_array[1][1] + 1 == coordinate_array[2][1]
    #       true
    #     elsif coordinate_array[0][0] + 2 == coordinate_array[1][0] +1 == coordinate_array[2][0] && coordinate_array[0][0] == coordinate_array[1][1] == coordinate_array[2][1]
    #       true
    #     else false
    #
    #
    # end
    #
    # def letter_eq do
    #
    #   else
    #     false
    #   end
    #
    #   def letter_ascend do
    #     1 = "A"
    #     2 = "B"
    #     3 = "C"
    #     4 = "D"
    #     if coordinate_array[0][0] + 2 == coordinate_array[0][1] + 1 == coordinate_array[0][2]
    #       true
    #     else
    #       false
    #
    #     end
    #
    #     def num_eq do
    #       if
    #         true
    #       else
    #         false
    #       end
    #
    #       def num_ascend do
    #         if coordinate_array[1][0] + 2 == coordinate_array[1][1] + 1 == coordinate_array[1][2]
    #           true
    #         else
    #           false
    #         end
    #
    #         def eq_ascend_eval do
    #           if num_eq == letter_ascend == true
    #             true
    #           elsif num_ascend == letter_eq == true
    #             true
    #           else
    #             false
end
