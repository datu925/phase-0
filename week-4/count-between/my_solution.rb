# Count Between

# I worked on this challenge by myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # PSEUDO
  # Initialize count as 0
  # FOR each integer in the list
  # => Add one to count if integer is greater than lower and less than upper bounds
  # Return count

  # initial
  #  count = 0
  #  list_of_integers.each do |int|
  #    count += 1 if int >= lower_bound and int <= upper_bound
  #  end
  #  return count

  # final with built-in

  return list_of_integers.count { |int| int >= lower_bound and int <= upper_bound }

end
