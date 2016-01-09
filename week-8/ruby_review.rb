# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

=begin

general thoughts

At a high-level, the problem solving is something like: a bingo game is won when x's on the board cover an arrangement of squares that is a winning combination. By convention, that arrangement is a line, but as the optional challenge indicates, it might be something else. We might even have a weird version of bingo where you only need 4 squares to win. Who knows.

So I'd like to have one method that checks whether the board matches one of the winning combinations, and another method that produces that list of winning combos. It feels more flexible.

pseudocode

initialize the board

checking function:
FOR each winning combination
  If all coordinates in that combo are covered in X's on the board, it's a winner.
  Otherwise try next combo
Return false after trying every winning combination

Combo-producing function:
Creates an array of winning combos, where each winning combo contains the coordinates that need to be fulfilled and the name of the kind of victory

FOR each row
  Start an winning combo
  FOR each column number (0-4)
    Add row number, column number as coordinates to winning combo (row victory)

FOR each column number (0-4)
  Start an winning combo
  FOR each row
    Add row number, column number as coordinates to winning combo (column victory)

Diagonal 1
Create a winning combo
FOR each number from 0-4
  Add that number, number as coordinates to winning combo (diagonal victory)

Diagonal 2
Create a winning combo
FOR each number from 0-4
  Add that number, 4-number as coordinates to winning combo (diagonal victory)

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

outside_corners = [['x', 44, 71, 8, 'x'],
                  [22, 20, 75, 21, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 54, 96, 81, 51],
                  ['x', 70, 54, 80, 'x']]

postage_stamp = [[47, 44, 71, 8, 21],
                  [22, 34, 75, 69, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 55, 96, 'x', 'x'],
                  [54, 70, 54, 'x', 'x']]

# Initial Solution

# class WinningCombo
#   attr_accessor :coordinates, :win_type

#   def initialize(coordinates=[], win_type)
#     @coordinates = coordinates
#     @win_type = win_type
#   end
# end


# class BingoScorer
#   attr_accessor :board
#   def initialize(board)
#     @board = board
#   end

#   def check_board
#     result = produce_winning_combos.find do |combo|
#       combo.coordinates.all? do |square|
#         square_value(square[0], square[1]) == "x"
#       end
#     end

#     if result
#       puts result.win_type
#       true
#     else
#       false
#     end
#   end

#   def square_value(row_num, col_num)
#     board[row_num][col_num]
#   end

#   def produce_winning_combos
#     @combo_array = []

#     #each of these could be broken out into separate methods if desired

#     #rows
#     board.each_with_index do |row, row_num|
#       combo = WinningCombo.new([],"row victory!")
#       row.each_index do |col_num|
#         combo.coordinates << [row_num, col_num]
#       end
#       @combo_array << combo
#     end

#     #columns
#     (0..4).each do |col_num|
#       combo = WinningCombo.new([], "column victory!")
#       board.each_index do |row_num|
#         combo.coordinates << [row_num,col_num]
#       end
#       @combo_array << combo
#     end

#     #diagonal one
#     combo = WinningCombo.new([], "diagonal victory!")
#     (0..4).map do |index|
#       combo.coordinates << [index, index]
#     end
#     @combo_array << combo

#     #diagonal two
#     combo = WinningCombo.new([], "diagonal victory!")
#     (0..4).map do |index|
#       combo.coordinates << [index, 4-index]
#     end
#     @combo_array << combo

#     #inside corners
#     @combo_array << WinningCombo.new(
#                                     [[1,1],[2,2],[3,3],[1,3],[3,1]],
#                                     "Inside corner victory!"
#                                     )

#     #outside corners
#     @combo_array << WinningCombo.new(
#                                     [[0,0],[2,2],[4,4],[0,4],[4,0]],
#                                     "Outside corner victory!"
#                                     )

#     #small diamond
#     @combo_array << WinningCombo.new(
#                                     [[1,2],[2,2],[3,2],[2,1],[2,3]],
#                                     "Small diamond victory!"
#                                     )

#     #kind of a nasty way to program in the postage stamp scenario, but it works
#     [[0,0],[0,3],[3,0],[3,3]].each do |shift|
#       combo = WinningCombo.new([],"Postage stamp victory!")
#       [[0,0],[0,1],[1,0],[1,1]].each do |coordinate|
#         combo.coordinates << [coordinate[0] + shift[0], coordinate[1] + shift[1]]
#       end
#       combo.coordinates << [2,2]
#       @combo_array << combo
#     end


#     @combo_array
#   end

# end

# new_board = BingoScorer.new(postage_stamp)
# puts new_board.check_board


# Refactored Solution

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
    puts "BINGO! " + result.win_type if result
    puts !!result
  end

  def result
    produce_winning_combos.find do |combo|
      combo.coordinates.all? do |square|
        square_value(square[0], square[1]) == "x"
      end
    end
  end

  def square_value(row_num, col_num)
    board[row_num][col_num]
  end

  def produce_winning_combos
    @combo_array = []

    #now we can easily turn these on/off if we don't want to play with
    #some of the wackier ones
    row_victories
    column_victories
    diagonal_victories
    inside_corner_victories
    outside_corner_victories
    postage_stamp_victories
    @combo_array
  end

  #rows
  def row_victories
    board.each_with_index do |row, row_num|
      combo = WinningCombo.new([],"row victory!")
      row.each_index do |col_num|
        combo.coordinates << [row_num, col_num]
      end
      @combo_array << combo
    end
  end

  #columns
  def column_victories
    (0..4).each do |col_num|
      combo = WinningCombo.new([], "column victory!")
      board.each_index do |row_num|
        combo.coordinates << [row_num,col_num]
      end
      @combo_array << combo
    end
  end

  #diagonals
  def diagonal_victories
    combo1 = WinningCombo.new([], "diagonal victory!")
    combo2 = WinningCombo.new([], "diagonal victory!")
    (0..4).map do |index|
      combo1.coordinates << [index, index]
      combo2.coordinates << [index, 4-index]
    end
    @combo_array << combo1
    @combo_array << combo2
  end

  #inside corners
  def inside_corner_victories
    @combo_array << WinningCombo.new(
                                    [[1,1],[2,2],[3,3],[1,3],[3,1]],
                                    "Inside corner victory!"
                                    )
  end

  #outside corners
  def outside_corner_victories
    @combo_array << WinningCombo.new(
                                    [[0,0],[2,2],[4,4],[0,4],[4,0]],
                                    "Outside corner victory!"
                                    )
  end

  #small diamond
  def small_diamond_victories
    @combo_array << WinningCombo.new(
                                    [[1,2],[2,2],[3,2],[2,1],[2,3]],
                                    "Small diamond victory!"
                                    )
  end

  #postage stamp
  def postage_stamp_victories
    [[0,0],[0,3],[3,0],[3,3]].each do |shift|
      combo = WinningCombo.new([],"Postage stamp victory!")
      [[0,0],[0,1],[1,0],[1,1]].each do |coordinate|
        combo.coordinates << [coordinate[0] + shift[0], coordinate[1] + shift[1]]
      end
      combo.coordinates << [2,2]
      @combo_array << combo
    end
  end

end



# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

boards = []
boards[0] = BingoScorer.new(horizontal)
boards[1] = BingoScorer.new(vertical)
boards[2] = BingoScorer.new(left_to_right)
boards[3] = BingoScorer.new(inside_corners)
boards[4] = BingoScorer.new(outside_corners)
boards[5] = BingoScorer.new(postage_stamp)

boards.each do |board| board.check_board end

# Reflection

=begin

What concepts did you review or learn in this challenge?

I learned about !!, which coerces Ruby objects into a boolean - either false if nil and true otherwise. And I really tried to make it object-based, defining a class that was peripheral to the bingo-checker itself.

What is still confusing to you about Ruby?

I'm actually bother by instance methods that don't name objects. Even though instance variables allow you to define methods that don't take arguments (since you can just refer to the instance variables), you miss out on a chance to clearly represent the logic of the method, and you couldn't decide to move it outside for any reason. I wonder if people have personal taste around this so that they list the arguments anyway.

What are you going to study to get more prepared for Phase 1?

I'm just going to try to do a lot of practice. I might also practice parsing large amounts of data, like the 23000 emails I've sent or received in my job for the last 3.5 years (that I just quit today!).

=end