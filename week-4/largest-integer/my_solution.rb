# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Pseudocode
  # return nil if array is empty
  # Otherwise, initialize current maximum as the first element of the array
  # FOR each element of the array
  #   IF that element is larger than the current maximum
  #     Set the current maximum to that element
  # Return the current maximum

  #initial solution
  #  return nil if list_of_nums.length == 0

  #  maximum = list_of_nums[0]

  #  list_of_nums.each do |el|
  #    maximum = el if el > maximum
  #  end

  #  return maximum

  #using built-in Ruby enumerables method
  return list_of_nums.max

end
