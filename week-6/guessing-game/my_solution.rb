# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer for the answer, and an integer for each guess
# Output: a symbol and a boolean based on the input and its relation with the answer
# Steps:

# store answer
# get guess and compare to answer
# IF guess > answer
# => return high and set boolean to false
# ELSE IF guess < answer
# => return low and set boolean to false
# ELSE
# => return correct and set boolean to true


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @solved = false
#     @answer = answer
#   end

#   def guess(input)
#     if input > @answer
#       @solved = false
#       :high
#     elsif input < @answer
#       @solved = false
#       :low
#     else
#       @solved = true
#       :correct
#     end
#   end

#   def solved?
#     @solved
#   end

# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @solved = false
    @answer = answer
  end

  def guess(input)
    if input == @answer
      @solved = true
      :correct
    else
      @solved = false
      input > @answer ? :high : :low
    end
  end

  def solved?
    @solved
  end

end




# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables are like traits or attributes that can be associated with a particular instance of an object; methods are things that objects can do. In this way, code becomes much more an expression of how you think about objects and relationships abstractly.

When should you use instance variables? What do they do for you?

Instance variables are useful when you want something to be available to many methods in an object. And you can store information in them and then access or edit it later, or use it to determine how an object behaves.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control allows different sections of code to execute based on conditions you define. I didn't have any trouble using it.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols are more memory efficient and faster. Though I'm not sure why that's particularly helpful in this case, since it's still a pretty small program (good practice though).

=end