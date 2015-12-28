# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Allows the code to access data or methods from other files. Require_relative works relative to the current directory, and works by referencing the name. There are other ways to load files, including just require, load, automatic up, etc.
require_relative 'state_data'

class VirusPredictor

  attr_reader :state, :population, :population_density

# Initialize the predictor algorithm with state name, population, and density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Output the number of predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# calculate predicted deaths based on population density and print
  def predicted_deaths
    # predicted deaths is solely based on population density

    cutoffs = [200,150,100,50,0]
    mult_factor = [0.4,0.3,0.2,0.1,0.05]

    ind = cutoffs.index { |el| population_density >= el }
    number_of_deaths = population * mult_factor[ind]

    print "#{state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

# calculate speed of spread based on population density and print
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    cutoffs = [200,150,100,50,0]
    add_factor = [0.5,1,1.5,2,2.5]

    ind = cutoffs.index { |el| population_density >= el }
    speed += add_factor[ind]

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, pop_data|

  VirusPredictor.new(state,
                    pop_data[:population_density],
                    pop_data[:population]
                    ).virus_effects

end

#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

One uses "hash rockets" and the other uses colons, one uses strings as keys and one uses symbols.

What does require_relative do? How is it different from require?

It allows us to access data or methods in a different file. Require_relative lets us give a path relative to the current file; require needs an absolute filepath.

What are some ways to iterate through a hash?

You can just use each with |k,v| to access your keys and values, but you could also iterate using each_pair (which is equivalent), each_key for just keys, or each_value for just values.

When refactoring virus_effects, what stood out to you about the variables, if anything?

They weren't necessary to pass as arguments, since they're instance variables and can be accessed from anywhere. Though interestingly, there's something nice about the transparency of a method having arguments - you can just see what input it needs to work with.

What concept did you most solidify in this challenge?

Require was helpful to go through. We also had an interesting time trying to refactor those if-then-else statements, which I find to be a major eyesore and requiring many lines of code. The advantage is readability - you can just look at it and understand what the whole block is trying to do - but it would be really annoying to change later if there were many cutpoints. I like the idea of the cutpoints and corresponding values coming almost as arguments to the method, so that you can easily change them without having to change the hardcoded values in the program. But I think there are tradeoffs.

=end