# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  arr = source.select {|i| i.to_s.include?(thing_to_find)}
  return arr
end

def my_hash_finding_method(source, thing_to_find)
  arr = []
  source.each do |k, v|
    if v == thing_to_find
      arr << k
    end
  end
  return arr
end

# Identify and describe the Ruby method(s) you implemented.
#select: Declare an item that represents an object, and a block of code to apply to that item.  Objects that return true in that block will be returned.
#to_s: turn object into a string
#include?: checks to see if the object in question includes what is in the following parenthesis
#each do: declares each key and value as items and applies a block of code to them individually

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  # destructively yeilds every item in the array to the code block
 source.map! do |item|
  # checks if item is a number
  if item.is_a? Integer
    # adds our paramater # to the item
    item+=thing_to_modify
  else
    # leaves the non number items the same--surprised I needed this
    item=item
  end
 end
end

def my_hash_modification_method!(source, thing_to_modify)
  # initializes an empty hash
  temp_hash={}
  # yields every item in the hash to the code block
  source.map do |key, value|
  # creates a new key/value pair with the same key but the updated value
    temp_hash[key]=value+thing_to_modify
  end
  # replaces the items in the original hash with those in the temp hash
  source.replace(temp_hash)
end

# Identify and describe the Ruby method(s) you implemented.
# .map! changes items in array per the instructions of the code block
# .is_a? checks to see if an item is in the specified class
# .map iterates over the hash and sends updated items to a new array
# .replace overwrites old hash with new hash
# RUBY DOCS !?!  Breathe...and experiment...and check the version.


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
   # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   new_hash = source.sort_by { |x,y| y}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the sort_by method here in my refactored solution. The sort_by method works by taking an input (a hash or an array), and then uses the parameters to determine what to use as a sorting method.
# In my array example, I used a variable x to stand for each item in the array (this is the part inside the || symbols). The second part, outside of the symbols, tells the method what to use to sort. When I tried to run it, I got an error because the method couldn't compare numbers and strings. When I added x.to_s (which converts each item to a string) to the code block, it was able to successfuly order the array based on the strings. While this worked here, it would need to be refactored if there were larger numbers in the array. When comparing the numbers as strings, for example, it would order like it would alphabetically (so 35 would come before 4).
# My original solution covered this by creating two separate empty arrays, pushing numbers to one and strings to another (using the is_a? method), then sorted each individually and then combined them. This would work for an overall example, but is much wordier.
# In the hash example, I did something very similar. Since a hash has both a key and a value, I need to put |x,y| within the code block. The x here represents the key and the y represents the values. Since I wanted to order by the age (the values), I had it sort by the y.




# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |x| # do to each element of the array
    if x.to_s.include?(thing_to_delete) #converts element to string, if the element includes the item to delete then,
      source.delete(x) #deletes element with the specified thing
    else
      nil #if not included then move on
    end
  end
      source #returns the updated source(array)
end

def my_hash_deletion_method!(source, thing_to_delete)
  if source.include?(thing_to_delete) #if the source includes the thing(key) to delete then,
    source.delete(thing_to_delete) #deletes item specified
    source #returns the updated source(hash)
  else
    puts "#{thing_to_delete} not found" # returns string if the key was not found in the hash
  end
end

# Identify and describe the Ruby method(s) you implemented.
#.include? evaluates "thing_to_delete" with each value in both hash and array and sees if the value is there or not
#.to_s sets ever element to a string
#.delete removes the element from the hash or array


# Person 5
def my_array_splitting_method(source)
  #PSEUDO create two containers, one for integers and one for everything else
  #loop through input. If integer, put in integer container; for everything else, put in everything else container
  #return container containing input container than other container

  #initial solution
  # ints = []
  # other = []

  # source.each do { |el|

  #   if el.is_a?(Integer)
  #     ints << el
  #   else
  #     other << el
  #   end
  # }

  # return [ints, other]

  #final/refactored
  source.partition { |el| el.is_a?(Integer) }

end

def my_hash_splitting_method(source, age)
  #PSEUDO
  #Create two containers: one for young pets and one for old
  #Iterate through ages in source data
  #If pet's age <= argument age, put age and name as a container in young grouping
  #Otherwise put as container in old grouping
  #Return groupings

  #Initial
  # young = []
  # old = []

  # source.each { |k,v|

  #   if v <= age
  #     young << [k,v]
  #   else
  #     old << [k,v]
  #   end
  # }

  # return [young, old]

  #Refactored
  source.partition { |k,v| v <= age }

end

# Identify and describe the Ruby method(s) you implemented.
#
# It seems like partition is awesome and easily usable based for both
# hashes and arrays (it is an enumerable method). In the block, you
# specify what your criteria are; partition returns an array of all
# elements where the criteria are true followed by all where the
# criteria are false. So for instance:

# arr = [1,2,3,4,5,6,7]
# arr.partition { |x| x < 4 } => [[1,2,3],[4,5,6,7]]


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# Described above. For tricks for reading Ruby docs, I usually use the
# google to get me to the right place, then look at the examples.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# Doesn't seem to apply to assignment any more.
#
#
