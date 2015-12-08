# PSEUDOCODE
# Input: an array containing everyone's names
# Output: an array of arrays, with each array representing an accountability group
# Requirements/principles: every group has at least three and at most five people. Group selection is totally random and doesn't repeat
# Steps:
# Option 1: cheater's way. I believe there is some kind of built-in shuffle method for an array. So shuffle the names, then segment them into groups of 3-5 (more on how to do that in a second)
# Option 2:
# Let n = number of people.
# Let n / 4 (integer division) = number of groups. We'll call it g. This will ensure no group has < 3 people or >5.
# Initialize output array containing g empty arrays
# While list of names isn't empty
# => Randomly choose a name. We'll do this by picking number from 0 to input array length - 1. That's the index of the name we'll pick.
# => Remove them from the input array
# => Put them in the next available slot in the output array. To do this, we'll count up from 0 to g-1 with each name chosen so that each time it picks a different pod
# Return output array

