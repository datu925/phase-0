# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # PSEUDOCODE
  # return nil if list is an empty array
  #   I'm assuming the .length method is okay here, otherwise this problem would be a lot more tedious
  # Initialize initial longest word as first word in array
  # Initialize initial longest length as length of that word
  # FOR each word
  #   IF word length is greater than maximum
  #     Set longest word as that word
  #     Set longest length as word's length
  # Return maximum


#  INITIAL SOLUTION
#  return nil if list_of_words == []
#
#  longest = list_of_words[0]
#  max_length = longest.length
#  list_of_words.each { |word|
#
#    if word.length > max_length
#      longest = word
#      max_length = word.length
#    end
#  }
#  return longest

  #BUILT-IN SOLUTION

  return list_of_words.max { |a, b| a.length <=> b.length }


end