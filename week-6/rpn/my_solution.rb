# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input: argument string
# Output: result
# Steps:

# convert to array
# loop through array until you find an operator
# evaluate the operator against the previous two items
# replace/delete operator and two previous and reset the index and length
# continue until index > length variable


# or recursive solution

# Initial Solution

class RPNCalculator
  # Define your methods, here!

  def initialize
  end

  def evaluate(arg_string)
    arg_array = arg_string.split(" ")
    length = arg_array.length
    index = 0
    while index < length

      if ["+","-","*"].include? arg_array[index]

        operand1 = arg_array[index - 2].to_i
        operand2 = arg_array[index - 1].to_i
        answer = operand1.method(arg_array[index]).(operand2)

        arg_array[index - 2] = answer
        arg_array.slice!(index-1..index)

        length = arg_array.length
        index = index - 2
      end
      index += 1
    end

    return arg_array[0].to_i
  end


end

test = RPNCalculator.new
puts test.evaluate("2 2 *")


# 4. Refactored Solution






# Reflection
