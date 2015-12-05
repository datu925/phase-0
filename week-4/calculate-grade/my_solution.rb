# Calculate a Grade

# I worked on this challenge with Thomas.

#Pseudocode

#Gets score
#Test score against grade thresholds
#Return grade for corresponding score

# Your Solution Below

def get_grade(score)

  if score < 60
    return "F"
  elsif score < 70
    return "D"
  elsif score < 80
    return "C"
  elsif score < 90
    return "B"
  else
    return "A"
  end
end