# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

# pseudo
# iterate through string indices
# for each index, if that letter plus the one next to it are CA, return the CA-based statement
# if you get through the whole code without finding anything, return the move to California statement

#initial solution
# def welcome(address)

#   index = 0
#   while index <= address.length - 2

#     if address[index]+address[index + 1] == "CA"
#       return "Welcome to California"
#     end

#     index += 1
#   end

#   return "You should move to California"
# end

def welcome(address)

  return "You should move to California" if address["CA"].nil?
  return "Welcome to California"

end