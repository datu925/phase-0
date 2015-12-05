# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Number (float or integer)
# Steps to solve the problem.
#
# Initialize a sum variable with value 0
# Loop through the array, adding each array value to the sum variable
# => Use .each method on the array to access each value
# => .each { |value| sum = sum + value }
# Return the sum variable

# 1. total initial solution
# def total (arr_values)
#   sum = 0
#   arr_values.each { |value| sum = sum + value}
#   return sum
# end


# 3. total refactored solution

def total(arr_values)
  arr_values.inject(0) { |sum, value| sum + value}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of words as strings
# Output: One string of concatenated words.
# Steps to solve the problem.
# Initialize sentence variable to hold full sentence
# Loop through each word in the array
# => If the first word, capitalize the word
# => Append the word to the sentence
# => If last word, append a period to the sentence, if not the last word, append a space.
# Return sentence variable

# 5. sentence_maker initial solution
# def sentence_maker (arr_words)
#   sentence = ''
#   word = ''
#   arr_words.each_index { |index|
#     word = arr_words[index]
#     if index == 0
#       word = word.to_s.capitalize
#     end
#     sentence = sentence + word.to_s

#     if index == arr_words.length - 1
#       sentence = sentence + '.'
#     else
#       sentence = sentence + ' '
#     end
#   }
#     return sentence
# end




# 6. sentence_maker refactored solution

def sentence_maker(arr_words)
  arr_words[0].capitalize!
  sentence = arr_words.join(" ")
  sentence += "."
  return sentence
end