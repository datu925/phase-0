# PSEUDOCODE
# Input: an array containing everyone's names
# Output: an array of arrays, with each array representing an accountability group
# Requirements/principles: every group has at least three and at most five people. Group selection is totally random and doesn't repeat
# Steps:
# Option 1: cheater's way. I believe there is some kind of built-in shuffle method for an array. So shuffle the names, then segment them into groups of 3-5 (more on how to do that in a second)
# Option 2:
# Let n = number of people.
# Let n / 4 (integer division) = number of groups. We'll call it g. This will ensure no group has < 3 people or >5.
# Initialize output list of names containing g empty groups or pods
# While list of names isn't empty
# => Randomly choose a name. We'll do this by picking number from 0 to input array length - 1. That's the index of the name we'll pick.
# => Remove them from the input list of names
# => Put them in the next available slot in the output list of names. To do this, we'll count up from 0 to g-1 with each number corresponding to a different pod
# Return output list of names


#Initial solution

# def accountability_groups(names)

#   num_names = names.length
#   num_groups = num_names / 4
#   output = []
#   num_groups.times { |x| output << []}

#   group_count = 0

#   while names.length != 0
#     random_choice = rand(names.length)
#     current_name = names[random_choice]
#     names.delete_at(random_choice)

#     output[group_count] << current_name
#     group_count = (group_count + 1) % num_groups
#   end

#   return output

# end


#refactored - takes advantage of the fact that we need only randomize the order of names once to derive random arrangements
#used the shuffle! method as I mentioned above
#I also tried inject, but to be honest I think the two-line solution way of initializing the output array is a lot clearer
#changed !=0 to >0 which, while identifical in impact, is logically clearer

def accountability_groups(names)

  num_names = names.length
  num_groups = num_names / 4

  output = (1..num_groups).inject([]) { |memo, x| memo << []}

  group_count = 0
  names.shuffle!

  while names.length > 0
    current_name = names.shift
    output[group_count] << current_name
    group_count = (group_count + 1) % num_groups
  end

  return output

end

p accountability_groups((1..46).to_a)

=begin

What was the most interesting and most difficult part of this challenge?

It actually was hard to figure out how to determine the algorithm for how large the groups had to be. And there are other ways you could do it too - I started down a path of trying to fill each group up to 5 first, but then you run into problems if the number of people is something like 46 - your code has to recognize that and make two groups of three. I'd like to revisit that at some point - maybe the user of the method can put more restrictions on group sizes

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, actually. I am getting better and not referencing code words (I used to think pseudocode was just an outline and using code words was fair game). Though I'm curious why that's so important - it feels like whatever makes your code easier to read and engage with ought to be what you use.

Was your approach for automating this task a good solution? What could have made it even better?

I don't make any distinctions between guides and students, which if you do is then is a harder problem - how do you ensure that each group has the appropriate number of students but also the right number of guides? What if there is a mismatch? I also think it would be interesting to try to write an implementation that tries to maximize the size of as many groups as possible (my solution equalizes group size as much as possible).

What data structure did you decide to store the accountability groups in and why?

I used an array of arrays - it felt like since they were random groups, the semantic value of a hash key wasn't necessary. But I can also see storing them in a hash of arrays as a viable option.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Yeah, I remember shuffle, and then I learned shift. I thought no one ever used pop or shift... but here I am! I also played around with inject, though as noted, I think it's kind of a convoluted usage here.

=end