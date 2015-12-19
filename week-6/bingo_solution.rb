# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2.5 hours on this challenge.


# Release 0: Pseudocode
# Outline:

=begin

Randomly generate a number from 0-4, and a number from 1-100.
0-4 corresponds to B-O and nested array index, which generates a guess.
ITERATE through nested arrays, looking in slots dictated by the 0-4 index
IF you find #, replace with an x

Print to screen (pretty formatting TBD)

=end


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Pick a random number from 0-4 and use to select a letter (BINGO)
  #Pick a random number from 1-100 using Random.new and range

# Check the called column for the number called.
  #For each nested array, look at the slot indicated by the random 0-4 number

# If the number is in the column, replace with an 'x'
  #Change the value (if found) to "x"

# Display a column to the console
  #Choose values in each array that correspond to random 0-4 number

# Display the board to the console (prettily)
  #Make sure each nested array has its own line as you print; other formatting TBD

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     rando = Random.new
#     letter = ["B","I","N","G","O"].sample
#     number = rando.rand(1..100)
#     return [letter,number]
#   end

#   def check(called)
#     letter = called[0]
#     number = called[1]
#     col = ["B","I","N","G","O"].index(letter)
#     @bingo_board.each do |arr|
#       if arr[col] == number
#         arr[col] = 'X'
#         break
#       end
#     end
#   end

#   def print
#     @bingo_board.each do |row|
#       p row
#     end
#   end

# end



# Refactored Solution

class BingoBoard

  attr_accessor :board, :game_name, :name_array

  def initialize(board)
    @board = board
    @game_name = "BINGO" #if we would rather play with another five-letter word like "DINGO"
    @name_array = game_name.split("")
  end

  # def column_values(number)
  #   board.inject([]) { |arr, row| arr << row[number] }
  # end

  Call = Struct.new(:letter, :number)

  def call
    rando = Random.new
    letter = name_array.sample
    number = rando.rand(1..100)
    Call.new(letter, number)
  end

  def check(letter, number)
    if name_array.include?(letter) == false
      raise ArgumentError.new("Letter does not exist in this game.")
    end

    col_number = name_array.index(letter)

    board.each do |row|
      if row[col_number] == number
        row[col_number] = 'X'
      end
    end

    # I considered a different approach that ultimately felt like too much work for the particular challenge here, but am leaving it below anyway

    # if column_values(col_number).include?(call_number)
    #   row_number = column_values(col_number).index(call_number)
    #   board[row_number][col_number] = "X"
    # end
  end

  def print_pretty
      printf("|%3s%4s%4s%4s%4s |\n", *name_array)
    board.each do |row|
      print("|")
      row.each do |num|
        printf(" %2s ", num)
      end
      print("|\n")
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

random_call = new_game.call
new_game.check(random_call.letter, random_call.number)
new_game.check("B", 47)
new_game.check("N", 54)
new_game.print_pretty


#optional - true bingo board

def true_bingo_board
  board = []
  5.times { |x| board << []}
  rando = Random.new

  board.each { |row|
    5.times { |count|
      low_bound = 15 * count + 1
      high_bound = 15 * (count + 1)
      row << rando.rand(low_bound..high_bound)
    }
  }

  board
end

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Sometimes its just hard and unnatural to write pseudocode without referring to data structures. Would love to see some more examples of really good pseudocode.

What are the benefits of using a class for this challenge?

You can think abstractly about what you might do before you start writing code; in other words, a bingo board is a very concrete object that is easy to reason about before you jump into the nested arrays, etc.

How can you access coordinates in a nested array?

You could use multiple brackets (e.g. array[0][1]), or you can iterate once or twice with each to go a layer down.

What methods did you use to access and modify the array?

I just used each and variable reassignment to modify.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

This isn't a method exactly, but I dug more into Structs. I felt like the call number was challenging because while it's easy to just pass it on as an array, now we are dependent on the knowledge of the data structure. Even though the Struct is new and adds some complexity, I feel like it's more in keeping with the principles of object-oriented design - we are returning a thing that responds to letter and a number, rather than an array where you need to know what [0] and [1] correspond to.

How did you determine what should be an instance variable versus a local variable?

If you only need it for a particular method, go local. Otherwise if you are likely to reference across methods, go instance.

What do you feel is most improved in your refactored solution?

As noted above, I think the struct thing is cool. I also made it so you can rename your bingo game to any five-letter word, which is totally useless but kinda fun.

=end