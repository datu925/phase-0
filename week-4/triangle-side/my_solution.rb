# I worked on this challenge with Thomas.


# Your Solution Below

#PSEUDO

# test a, b, and c to see if any of them are zero (we do this by testing the product of the 3)
# for each ordering of sides
  # add two sides and compare to the third
  # IF two sides are less than third
  #   Not valid
# after testing all combos, return valid


def valid_triangle?(a, b, c)
  # Your code goes here!
  if a * b * c == 0
    return false
  end

  arr = [a,b,c].sort

  if arr[0] + arr[1] < arr[2]
    return false
  else
    return true
  end

  # if a + b < c
  #   return false
  # elsif b + c < a
  #   return false
  # elsif a + c < b
  #   return false
  # end
  # return true

end