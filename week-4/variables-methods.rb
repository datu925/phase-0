def name_greet
  puts "What's your first name?"
  first_name = gets.chomp
  puts "What's your middle name?"
  middle_name = gets.chomp
  puts "What's your last name?"
  last_name = gets.chomp
  puts "Hi, #{first_name} #{middle_name} #{last_name}!"
end

def better_number
  puts "What's your favorite number?"
  fave_number = gets.chomp.to_i
  puts "If you like #{fave_number}, you'll love #{fave_number + 1}!"
end

name_greet
better_number

=begin

Links to other problems:
https://github.com/datu925/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/datu925/phase-0/blob/master/week-4/math/my_solution.rb


How do you define a local variable?

Loc_variable = ...

How do you define a method?

def method(arguments)
  ...
end

What is the difference between a local variable and a method?

Local variables store information whereas methods do something.

How do you run a ruby program from the command line?

ruby name_of_file

How do you run an RSpec file from the command line?

rspec name_of_file

What was confusing about this material? What made sense?

I've been exposed to all of this before, so it all made sense.
=end