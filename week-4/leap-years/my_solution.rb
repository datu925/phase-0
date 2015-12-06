# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(year)

  if [100, 200, 300].include? year % 400
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end