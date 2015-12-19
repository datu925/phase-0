# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


#Refactor list
#Get rid of error counter and replace with better hash membership check
#simpler way to define serving_size variable
#replace case with if-then
#add variable for number of servings
#change text
#add feature to say what foods you can still make


def serving_size_calc(item_to_make, num_of_ingredients)

  #initialize food_library and error counter
  food_library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #raise exception if food not in food_library
  if food_library.include?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #access required ingredients
  serving_size = food_library[item_to_make]
  #calculate ingredient left over after making some number of foods
  num_of_servings = num_of_ingredients / serving_size
  remaining_ingredients = num_of_ingredients % serving_size

  #select items from food_library that have =< number of remaining_ingredients
  #put as comma list
  suggested_list = food_library.select { |key, value| value <= remaining_ingredients }.keys.join(", ")

  #display message based on value of remainder
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_servings} servings of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_servings} servings of #{item_to_make}. You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_list}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this challenge?

Variables names are important! And weird error loops take a long time to parse.
Even if your code works in the sense that it has the correct outcomes, it's
actually really important for the logic to be clear for new readers; otherwise
it takes twice as long to figure out why someone wrote their code that way.

Did you learn any new methods? What did you learn about them?

It wasn't totally new, but I got a chance to use .include? in a hash context.
We also discussed .has_key?. My favorite was getting a chance to chain
.select, .keys, and .join.

What did you learn about accessing data in hashes?

It's very easy when iterating to pick the wrong way to iterate. For instance,
the initial code was trying to feed the key-value pair back to the hash as a
key. I prefer to be explicit with |key, value| (or something more semantically
appropriate), but it's good to know that you can also iterate over the
key-value pairs.

What concepts were solidified when working through this challenge?

Checking membership in a hash. Raising exceptions. Case statements.
Explicit variable names. And the combo of .select and .keys with hashes.

=end