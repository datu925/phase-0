# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#It was expecting another end, but it just got the end of the file.
# 5. Where is the error in the code?
#After the period at the end of the file (i.e the EOF)
# 6. Why did the interpreter give you this error?
#We're missing an end to close the while loop. So Ruby uses the next end, but then there's  nothing to close the cartman_hates method. And so on until the EOF.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#NameError or undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
#the variable south_park isn't defined
# 4. Where is the error in the code?
#after the variable (interpeter wants it to be initialized)
# 5. Why did the interpreter give you this error?
#We declared a variable south_park but didn't actually initialize it/give it a value, which you have to do in Ruby.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#NoMethodError or undefined method
# 3. What additional information does the interpreter provide about this type of error?
#cartman is an undefined method
# 4. Where is the error in the code?
#Technically before cartman - there should be a def
# 5. Why did the interpreter give you this error?
#You can't use a method that isn't defined. cartman needs to be defined earlier or we need to start defining cartman with "def cartman..."

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase()

# 1. What is the line number where the error occurs?
#66
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments - we got 1 but were expecting 0
# 4. Where is the error in the code?
#the method call, in the parentheses
# 5. Why did the interpreter give you this error?
#We are passing an argument to a method that doesn't take arguments. Big no-no in Ruby.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
#85
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments - we got 0 but were expecting 1
# 4. Where is the error in the code?
#the method call - there should be parentheses passed with an argument in them
# 5. Why did the interpreter give you this error?
#We failed to pass an argument to a method that requires one argument. Big no-no in Ruby.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#106
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments - we got 1 but were expecting 2
# 4. Where is the error in the code?
#the method call - there should be two arguments in the parentheses
# 5. Why did the interpreter give you this error?
#We failed to pass two arguments to a method that requires two arguments. Instead, we only gave it one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#125
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#It's trying to convert a string into a FixNum
# 4. Where is the error in the code?
#the asterisk/multiplication sign
# 5. Why did the interpreter give you this error?
#Ruby's trying to convert the string to a FixNum so that it can be multiplied with 5. But there is no conversion for that. Interestingly, if you flip the order, it writes the string five times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#140
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#the phrase "divided by zero"
# 4. Where is the error in the code?
#the division sign
# 5. Why did the interpreter give you this error?
#NEVER DIVIDE BY ZERO DONT EVER DO IT NOT IN RUBY OR ANYWHERE ELSE

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#156
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#"cannot load such file" - the interpreter was trying to find a file we said we needed, but it can't find it
# 4. Where is the error in the code?
#"require relative" - the file that require_relative points to does not exist in the directory
# 5. Why did the interpreter give you this error?
#We used require_relative to point to a file address relative to a current file, but that file (cartmans_essay.md) doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?

I'd never seen the LoadError before - I thought that was pretty cool though.

How did you figure out what the issue with the error was?

The name of the error helps a lot. Plus the add'l information that the interpreter gives makes it easy to tell what's going on. Honestly, I think those two together are more helpful than the line number, which can sometimes be really misleading.

Were you able to determine why each error message happened based on the code?

Yes.

When you encounter errors in your future code, what process will you follow to help you debug?

I'll be able to use the error methods more effectively before resorting to print/puts statements or using a debugger.

=end