# Pad an Array

# I worked on this challenge with Jillian.

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The array, the minimum size, and then an optional default value.
# What is the output? (i.e. What should the code return?) It should return an array with the changes implemented.
# What are the steps needed to solve the problem?
#  Determine size of current array.
#  Figure out how many additional indices must be added to array.
#  Add required number of default values to array.
#  Return full array.


#1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   slots_to_add = min_size - array.length
#   #array.length #the variable len = array.length
#   if slots_to_add > 0
#     slots_to_add.times { |x| array.push value }
#   end
#   return array
# end


# def pad(array, min_size, value = nil) #non-destructive

#   new_array = []
#   array.each { |el| new_array.push(el)}

#   slots_to_add = min_size - array.length
#   if slots_to_add > 0
#     slots_to_add.times { |x| new_array.push value }
#   end

#   return new_array

# end




# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  slots_to_add = min_size - array.length
  if slots_to_add > 0
    slots_to_add.times { |x| array.push value }
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive

  new_array = [].concat(array)

  slots_to_add = min_size - array.length
  if slots_to_add > 0
    slots_to_add.times { |x| new_array.push value }
  end

  return new_array

end



# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Yes. But there's diminishing marginal returns - at some point, if you understand how to implement a step in code, you should just do it rather than keep breaking things down.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

In some cases, our pseudocode was more granular than our actual program ending up being - we were able to combine multiple lines into one statement. I tend to like that. But sometimes you find edge cases once you start writing code that you hadn't thought about when you were pseudo-coding.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial tests were successful, because we spent a lot of time using puts statements prior to running the tests so as to make sure we were getting the results we wanted.

When you refactored, did you find any existing methods in Ruby to clean up your code?

Not a ton. We explored some shorthand an alternative way to initialize an array in our non-destructive method. But the methods were short enough anyway that it didn't seem worth it to make big changes.

How readable is your solution? Did you and your pair choose descriptive variable names?

You tell me! I think we did fine.

What is the slots_to_add between destructive and non-destructive methods in your own words?

Destructive methods modify the object the method was called on in-place; non-destructive return modified copy so that the original object is unchanged.

=end