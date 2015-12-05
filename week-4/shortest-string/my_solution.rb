# Shortest String

# I worked on this challenge by myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # PSEUDOCODE
  # return nil if list has no strings in it
  #   I'm assuming the .length method is okay here, otherwise this problem would be a lot more tedious
  # Initialize initial shortest word as first word in array
  # Initialize initial shortest length as length of that word
  # FOR each word
  #   IF word length is smaller than minimum
  #     Set shortest word as that word
  #     Set shortest length as word's length
  # Return minimum


#  INITIAL SOLUTION
#  return nil if list_of_words == []
#
#  shortest = list_of_words[0]
#  min_length = shortest.length
#  list_of_words.each { |word|
#
#    if word.length < min_length
#      shortest = word
#      min_length = word.length
#    end
#  }
#  return shortest

  #BUILT-IN SOLUTION

  return list_of_words.min { |a, b| a.length <=> b.length }


end