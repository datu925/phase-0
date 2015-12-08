# Numbers to Commas Solo Challenge

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# Input is a positive integer

# What is the output? (i.e. What should the code return?)

# That same integer with commas in the appropriate places (which will have to be a string). e.g. 10000 => "10,000"

# What are the steps needed to solve the problem?

# Thought process
# Commas appear every 3 digits, starting from the right.
# So we could convert the number to an array of individual digits
# then iterate through the array backward, creating a new string as we go that actually inserts the commas every three digits
# and it may be even simpler if you could reverse the array before you loop through it so you can iterate forward instead

# Steps
# Reverse the number so that the first digit is last and last, first
# Start tracking an output number
# Move from the left/beginning over the reversed number to the right. For each digit:
# => Add the current digit to the output number at the beginning
# => Add a comma to the beginning as well IF the digit number (e.g. first, second, etc.) == 2 mod 3
# Once you're done, if output number starts with a comma, remove it, and return output number

# 1. Initial Solution

# def separate_comma(integer)

#   integer = integer.to_s.split("").reverse
#   output = ""
#   integer.each_with_index { |el, index|
#     output = el + output
#     output = "," + output if index % 3 == 2
#   }

#   if output[0] == ","
#     return output[1..-1]
#   else
#     return output
#   end
# end

# 2. Refactored Solution

def separate_comma(integer)

  integer = integer.to_s.split("").reverse
  output = ""
  integer.each_with_index { |el, index|
    output.prepend(el)
    output.prepend(",") if index % 3 == 2 and index != integer.length-1
  }

  return output

end


# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

I drew an example on paper and thought about it for a while. It seemed like you could either loop through from the back or from the front, and it seemed like while it was possible to do while just converting the input integer to a string, I thought it would be easier to have it as an array of characters. The trick is understanding how to easily insert the comma every three characters; whenever I hear "every x" times, I think of %/modulus.

Was your pseudocode effective in helping you build a successful initial solution?

Yep! It was pretty easy to convert to code the first time through.

What new Ruby method(s) did you use when refactoring your solution?

I used prepend (and learned about unshift too; I forgot my output was a string and not an array), and also tweaked the line that puts in the comma so I could avoid conditional return statements later. I already knew about each_with_index but if I hadn't used it in my initial solution, that would be the big winner.

Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I have some experience with the ruby docs, so I didn't find it any more difficult than it normally is :). I kept the logic pretty much the same, but I would be curious to think about the slickest way to add characters to the existing array rather than have an output string. But that felt less like refactoring and more like an alternate solution.

How did you initially iterate through the data structure?

With each_with_index.

Do you feel your refactored solution is more readable than your initial solution? Why?

Maybe a bit? If I had to do it again, I'd probably try a solution that didn't reverse at the onset and just iterated through the number from the front end, using some math to figure out where to put the commas

=end
