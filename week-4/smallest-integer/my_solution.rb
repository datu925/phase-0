# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Pseudocode
  # return nil if array is empty
  # Otherwise, initialize current minimum as the first element of the array
  # FOR each element of the array
  #   IF that element is larger than the current minimum
  #     Set the current minimum to that element
  # Return the current minimum

  #initial solution
  #  return nil if list_of_nums.length == 0

  #  minimum = list_of_nums[0]

  #  list_of_nums.each do |el|
  #    minimum = el if el < minimum
  #  end

  #  return minimum

  #using built-in Ruby enumerables method
  return list_of_nums.min

end