# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

#States that the code requires the 'state_data' file to be present in the directory to work
require_relative 'state_data'

class VirusPredictor

  #Initializes our class using 3 arguments, and create instanced variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calling the two class methods to obtain the data we want using our instanced variables
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  #Runs an operator based on a set of conditions based on passed in arguments, and prints the string while returning nil
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Runs a set of conditional statements based on population density, and prints statement at the end
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each_key do |i|
 states = VirusPredictor.new(i,STATE_DATA[i][:population_density],STATE_DATA[i][:population])
 states.virus_effects
end


#=======================================================================
# Reflection Section
# The usage of symbols in the nested hash keeps the relative number of variables much lower than the style used in the first hash
# Require relative requires a path relative to the directory of the file being worked with, and is generally used for code *you* know or wrote, where as require is an absolute path and is used in situations such as software distribution where the code may access a ruby library using an absolute path
# .each_key, for loops are both ways to iterate through a hash
# Our methods already utilized instanced variables and had no need for arguments
# I solidified my work with hash iteration really well with this challenge