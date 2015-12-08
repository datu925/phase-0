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

def accountability_groups(names)

  num_names = names.length
  num_groups = num_names / 4
  output = []
  num_groups.times { |x| output << []}

  group_count = 0

  while names.length != 0
    random_choice = rand(names.length)
    current_name = names[random_choice]
    names.delete_at(random_choice)

    output[group_count] << current_name
    group_count = (group_count + 1) % num_groups
  end

  return output

end
