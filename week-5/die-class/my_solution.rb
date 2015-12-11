# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 0.5 hours on this challenge.

# 0. Pseudocode

# Input: number of sides for the die (an integer)
# Output: a random number from 1 to the number of sides
# Steps:

# Write an initialize method that tracks number of sides
# Be sure to reject arguments <1
# Define getter method sides that just pulls sides
# Write a method that spits out a random number from 1 to number of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides >= 1
#       raise ArgumentError.new("Number of sides must be greater than 1.")
#     end

#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     1 + rand(@sides)
#   end
# end



# 3. Refactored Solution

class Die
  attr_reader :sides
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Number of sides must be greater than 1.")
    end

    @sides = sides
  end

  def roll
    rando = Random.new
    1 + rando.rand(@sides)
  end
end


# 4. Reflection

=begin
# What is an ArgumentError and why would you use one?

An ArgumentError is thrown when user submits a bad argument to a method. When defining classes, you can use these to reject output that doesn't follow the rules of your program and will break it later.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used a more evolved version of rand using the Random class (though it was totally unnecessary since we were working with integers and not floats, though I wanted to play around with it). I also used attr_reader to avoid having to write a def sides method. The challenges were actually more about getting the program working the first time and not the refactoring.

# What is a Ruby class?

A class is essentially a blueprint for an object in Ruby. It dictates how an instance of an object will be created, which default methods and properties it will have, and so on.

# Why would you use a Ruby class?

You'd write a Ruby class when trying to create an object that fulfilled the needs of your specific program and responded to other objects in your program.

# What is the difference between a local variable and an instance variable?

Local variables are local to a particular method and can be referred to in the context of the method where they were defined. Instance variables are tied to an instance of an object and can be used throughout the object in other methods. They start with the @ symbol.

# Where can an instance variable be used?

Across all of the methods of that particular instance of an object; when you're defining a class, an instance variable is fair game to appear in multiple methods.

=end