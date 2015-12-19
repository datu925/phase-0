# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |el|

  if el.kind_of?(Array)
    el.map! do |sub|
      sub += 5
    end
  else
    el += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |el|

#   if el.kind_of?(Array)
#     el.map! do |sub|
#       if sub.kind_of?(Array)
#         sub.map! do |subsub|
#           subsub += "ly"
#         end
#       else
#         sub += "ly"
#       end
#     end
#   else
#     el += "ly"
#   end
# end

def addly(arr)

  arr.map! do |el|

    if el.kind_of?(Array) == false
      el += "ly"
    else
      addly(el)
    end
  end
  return arr
end

p addly(startup_names)


=begin

What are some general rules you can apply to nested arrays?

With each layer of a nested array/hash, you will need to add an additional index/key in brackets to directly access an element. For instance, elements in a nested array three layers deep will look like arr[x][y][z].

What are some ways you can iterate over nested arrays?

You can use any of the normal enumerable methods (particularly each or map), but you need to be aware what might happen if you need to go into a nested element. The disadvantage of this approach is that you need to know the level of nested-ness in advance, and your code gets ugly fast. You can also employ recursion, though that has its own disadvantages.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We stayed classic with map! (although I actually haven't used that one that often so far). It felt like the right way to modify the array in place. I was actually surprised to find that "each" did not seem to modify the original elements, which surprised me - I would have expected that to work as well.

end