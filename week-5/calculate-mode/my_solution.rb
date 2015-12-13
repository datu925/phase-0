# Calculate the mode Pairing Challenge

# I worked on this challenge with Gino]

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?

#Array of stuff

# What is the output? (i.e. What should the code return?)

# Array of most common/frequent value in previous array

# What are the steps needed to solve the problem?

# INITIALIZE a hash
# LOOP through array
#  adding array values as keys if it doesn't exist
#  Increasing the hash values each time we see an array value
# Find max by pulling hash values into an array
# Take max from array directly
# Then LOOP through hash looking for values that equal our max
# IF value is equal to max
#   Put it in final array
# After looping, return final array

# 1. Initial Solution
=begin
def mode(array)

  count_hash = {}

  array.each { |el|

    count_hash[el] = array.count(el)

    }

  max_value = count_hash.values.max

  return_array = []

  count_hash.each { |k,v|

      if v == max_value
        return_array.push (k)
      end
    }

  p return_array

end
=end

# 3. Refactored Solution
def mode(array)

  count_hash = {}

  array.each { |el|

    count_hash[el] = array.count(el)
  }

  max_value = count_hash.values.max

  count_hash.select { |k,v| v == max_value}.keys
end



# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

My pair and I both felt like a hash was the clear winner for this problem, because it would let us track the number of occurrences of a particular word or array value and access that by the word/value name.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Woah, inter-pairing session competition! Yes, slightly, because we went into greater detail. Still tended to use code words.

What issues/successes did you run into when translating your pseudocode to code?

Honestly, it was very smooth. We each had some slick methods we'd picked up from previous challenges that made some of the harder parts pretty easy.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

To create the count of words/stuff, we use array.count, and when we were trying to pick all keys that had the maximum value (i.e. appeared the most), we used select. In retrospect, while the array.count method is incredible simple, it is also not very memory or fast efficient - it would be much better from an algorithmic perspective to avoid the .count method and simply iterate through the array, populating the hash as we go. But sometimes you have to privilege that readability and intuitiveness over efficiency. Nothing was particularly difficult to implement - our pair only took about 45 minutes.

=end