
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Timur.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: Valid (True) or Invalid (false) credit card number
# Steps:

# First convert numbers to an array set
# do an each and dounle 1,3,5,7 index number element and keep the tally... if the doubled value is more than 1 digits then split and add to tally.


# Initial Solution


# class CreditCard
#   def initialize(cc_number)
#     @cc_number = cc_number
#     raise ArgumentError.new("Credit card length is not 16 digits") if cc_number.to_s.length != 16
#   end

#   def split_digits(two_digit)
#     return (two_digit % 10) + two_digit / 10
#   end

#   def check_card
#     cc_arr = @cc_number.to_s.chars.map(&:to_i)
#     #print cc_arr
#     #print "\n"

#     cc_arr.each_with_index do |value, i|
#       #puts "index: #{i} - value: #{value}"
#       if i.even?
#         cc_arr[i] = value + value
#       end
#     end
#     #print cc_arr
#     #print "\n"

#     tally = 0
#     cc_arr.each do |j|
#       if j > 9
#         tally += split_digits(j)
#       else
#         tally += j
#       end
#     end
#     if tally % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

# end


# Refactored Solution

class CreditCard
  def initialize(cc_number)
    @cc_number = cc_number
    raise ArgumentError.new("Credit card length is not 16 digits") if cc_number.to_s.length != 16
  end

  def tally_digits(num)
    return (num % 10) + num / 10
  end

  def check_card
    cc_arr = @cc_number.to_s.chars.map(&:to_i)

    tally = 0
    cc_arr.each_with_index do |value, i|

      if i.even?
        tally += tally_digits(2 * value)
      else
        tally += tally_digits(value)
      end

    end


    return true if tally % 10 == 0
    return false
  end

end

cc = CreditCard.new(4563960122001999)
print cc.check_card



# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?

Figuring out how we wanted to both alter and sum the elements of the array - we did it in two loops the first time (but were able to consolidate the second).

What new methods did you find to help you when you refactored?

I renamed some methods and variables, which I'm big on now. As for new methods, we encountered the chars one, though that was part of the initial solution. And we used each_with_index a good amount, which I'd seen before but hadn't worked with a lot.

I also found but chose not to use combinations of each, with_index, and inject, which could have done the summation in one step, but also would have been a major pain to decipher.

What concepts or learnings were you able to solidify in this challenge?

I was happy that we used a helper function to simplify the problem, which feels like it's generally good practice.

=end