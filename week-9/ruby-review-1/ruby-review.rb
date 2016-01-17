# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# I don't see a cleverer approach than building the fibonacci sequence and seeing if the number is part of it.
# define small and large terms which start at 0 and 1
# WHILE large term < number
# => Hold large term value temporarily
# => Make large term equal to sum of small and large terms
# => Make small term equal to previous large term (so we've moved up the sequence)
# REPEAT. When loop is broken
# IF large term = number, return true; otherwise, return false

# Initial Solution

# def is_fibonacci?(num)
#   small = 0
#   large = 1
#   while large < num
#     temp = large
#     large = small + large
#     small = temp
#   end
#   large == num ? true : false
# end

# Refactored Solution

#algorithm is basically the same, but I realized my initial solution failed on 0
#so now we check the smaller of the two terms for complete coverage

#there is a way to do lines 39-41 in two lines, but it is not as conceptually clear
#as the ugly temp variable

def is_fibonacci?(num)
  f_small = 0
  f_large = 1
  while f_small < num
    temp = f_large
    f_large = f_small + f_large
    f_small = temp
  end
  f_small == num ? true : false
end


# Reflection

=begin
What concepts did you review in this challenge?

While loops, ternary operator, general problem-solving

What is still confusing to you about Ruby?

Nothing really. I initially forgot to do == when checking the condition instead of a
single =, but that's not a big deal.

What are you going to study to get more prepared for Phase 1?

Honestly, I'm feeling pretty good about Ruby. I will probably spend my time
practicing Sublime shortcuts and random terminal stuff so I am as efficient as
possible, rather than going deeper into Ruby in the next day or two.

=end