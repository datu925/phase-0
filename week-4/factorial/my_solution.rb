# Factorial

# I worked on this challenge with Lindsey.


# Your Solution Below
def factorial(number)
  # Your code goes here
  # PSEUDOCODE
  # Initialize a variable for the product as 1
  # Loop with an increment
  # => Multiply product by increment
  # Return product

  # initial solution
  product = 1

  for increment in (1..number)
    product = product * increment
  end

  return product
end