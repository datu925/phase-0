#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: a name
# Output: a string printing a greeting to that name
# Steps:

# Get name from user; this should be an argument to Greetings
# Create a namedata instance to store the name in
# Print string with name in it using reader on namedata instance

class NameData

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Greetings

  def initialize(name)
    @my_name = NameData.new(name)
  end

  def hi_there
    puts "Hi there, " + @my_name.name
  end
end

greet = Greetings.new("Dan")
greet.hi_there

# Reflection

=begin

Release 1

What are these methods doing?

These methods are accessing and then changing the values of instance variables.

How are they modifying or returning the value of instance variables?

They are simply doing variable re-assignment to the instance variable.


Release 2

What changed between the last release and this release?

We replaced what_is_age with an attr_reader at the top. Output doesn't change.

What was replaced?

what_is_age method.

Is this code simpler than the last?

Decidely.


Release 3

What changed between the last release and this release?

The change_my_age method is gone and now we have an attr_writer on top.

What was replaced?

change_my_age method

Is this code simpler than the last?

Decidely


What is a reader method?

Syntactic sugar for reading an instance variable

What is a writer method?

Syntactic sugar for writing to an instance variable

What do the attr methods do for you?

They read/modify instance variables without you having to explicitly define methods that do so.

Should you always use an accessor to cover your bases? Why or why not?

I probably will, though admittedly there is value in only doing what you think you will need, and then sometimes getting a bug when something you didn't intend to happen happens.

What is confusing to you about these methods?

I'd like to know more about how they work behind the scenes. But the usage makes sense.

=end