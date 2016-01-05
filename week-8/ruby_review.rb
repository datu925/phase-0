# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

=begin

At a high-level, the problem solving is something like: a bingo game is won when x's on the board cover an arrangement of squares that is a winning combination. By convention, that arrangement is a line, but as the optional challenge indicates, it might be something else. We might even have a weird version of bingo where you only need 4 squares to win. Who knows.

So I'd like to have one method that checks whether the board matches one of the winning combinations, and another method that produces that list of winning combos. It feels more flexible.

Checking function:
For each winning combination
  If all coordinates in that combo are covered in X's on the board, winner.
  Otherwise try next combo
End
Return false if we don't find anything

Combo producing function:
Creates an array of winning combos, where each winning combo contains the coordinates that need to be fulfilled and the name of the kind of victory

For each row, dump the coordinates of that row into a winning combo (row victory)
For each col, "" (column victory)
For each diagonal, "" (diagonal victory)
And so on for some of the rarer ones

=end



# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

inside_corners = [[47, 44, 71, 8, 21],
                  [22, 'x', 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 'x', 51],
                  [54, 70, 54, 80, 83]]

postage_stamp = [[47, 44, 71, 8, 21],
                  [22, 34, 75, 69, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 55, 96, 'x', 'x'],
                  [54, 70, 54, 'x', 'x']]

# Initial Solution

class WinningCombo
  attr_accessor :coordinates, :win_type

  def initialize(coordinates=[], win_type)
    @coordinates = coordinates
    @win_type = win_type
  end
end


class BingoScorer
  attr_accessor :board
  def initialize(board)
    @board = board
  end

  def check_board
    result = produce_winning_combos.find do |combo|
      combo.coordinates.all? do |square|
        check_square(square[0], square[1]) == "x"
      end
    end

    if result
      puts result.win_type
      true
    else
      false
    end
  end

  def check_square(row_num, col_num)
    board[row_num][col_num]
  end

  def produce_winning_combos
    combo_array = []

    #each of these could be broken out into separate methods if desired

    #rows
    board.each_with_index do |row, row_num|
      combo = WinningCombo.new([],"row victory!")
      row.each_index do |col_num|
        combo.coordinates << [row_num, col_num]
      end
      combo_array << combo
    end

    #columns
    (0..4).each do |col_num|
      combo = WinningCombo.new([], "column victory!")
      board.each_index do |row_num|
        combo.coordinates << [row_num,col_num]
      end
      combo_array << combo
    end

    #diagonal one
    combo = WinningCombo.new([], "diagonal victory!")
    (0..4).map do |index|
      combo.coordinates << [index, index]
    end
    combo_array << combo

    #diagonal two
    combo = WinningCombo.new([], "diagonal victory!")
    (0..4).map do |index|
      combo.coordinates << [index, 4-index]
    end
    combo_array << combo

    #inside corners
    combo_array << WinningCombo.new(
                                    [[1,1],[2,2],[3,3],[1,3],[3,1]],
                                    "Inside corner victory!"
                                    )

    #outside corners
    combo_array << WinningCombo.new(
                                    [[0,0],[2,2],[4,4],[0,4],[4,0]],
                                    "Outside corner victory!"
                                    )

    #small diamond
    combo_array << WinningCombo.new(
                                    [[1,2],[2,2],[3,2],[2,1],[2,3]],
                                    "Small diamond victory!"
                                    )

    #kind of a nasty way to program in the postage stamp scenario, but it works
    [[0,0],[0,3],[3,0],[3,3]].each do |shift|
      combo = WinningCombo.new([],"Postage stamp victory!")
      [[0,0],[0,1],[1,0],[1,1]].each do |coordinate|
        combo.coordinates << [coordinate[0] + shift[0], coordinate[1] + shift[1]]
      end
      combo.coordinates << [2,2]
      combo_array << combo
    end


    combo_array
  end

end

new_board = BingoScorer.new(postage_stamp)
puts new_board.check_board


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection