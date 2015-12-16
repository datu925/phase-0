# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings of variable lengths
# Output: a random string from the input array
# Steps:

# store strings
# get random number from 0 to length of input array - 1
# this represents index of item we will have randomly selected

# Initial Solution

# class Die
#   def initialize(labels)
#     unless labels.length > 0
#       raise ArgumentError.new("Can't be an empty array")
#     end
#     @sides = labels
#   end

#   def sides
#     @sides.length
#   end

#   def roll
#     rand_index = rand(sides)
#     @sides[rand_index]
#   end
# end


# Refactored Solution


class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Can't be an empty array")
    end
    @sides = labels
  end

  def sides
    @sides.length
  end

  def roll
    @sides.sample
  end
end





# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

Not very much at all. The big differences were around making the code work with the new kind of input. But the logic of randomness is very similar.

What does this exercise teach you about making code that is easily changeable or modifiable?

Ha. It's a good idea! You don't know when/under what circumstances you will be asked to tweak your code in small or large ways.

What new methods did you learn when working on this challenge, if any?

I learned .sample, which is a nice way to not have to generate a random number in order to get a random value from an array (also would have made the accountability groups assignment easier).

What concepts about classes were you able to solidify in this challenge?

It was helpful just to write the syntax again. And it made me think about the attr_reader-type shortcuts, which weren't as useful in this case.


=end