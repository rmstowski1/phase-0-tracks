# Virus Predictor

# I worked on this challenge [by myself, with: David Rodgers].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# allows you to import a file thats in the same 
#
require_relative 'state_data'

class VirusPredictor


  # takes in 3 parameters and initializes attributes
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end

  # returns predicted_deaths and speed_of_spread
  def virus_effects
  print predicted_deaths
  puts speed_of_spread
  end

  private

  def num_deaths(multi)
  (@population * multi).floor
  end

  # takes in 3 parameters, based on population_density, will output number of deaths
  def predicted_deaths
  # predicted deaths is solely based on population density
  population_hash = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50=> 0.1, 49 => 0.05}
  population_hash.each do |population, multi|
  if @population_density >= population
  number_of_deaths = num_deaths(multi)
  end
  end
  # if @population_density >= 200
  # number_of_deaths = num_deaths(0.4)
  # elsif @population_density >= 150
  # number_of_deaths = num_deaths(0.3)
  # elsif @population_density >= 100
  # number_of_deaths = num_deaths(0.2)
  # elsif @population_density >= 50
  # number_of_deaths = num_deaths(0.1)
  # else
  # number_of_deaths = num_deaths(0.05)
  # end

  "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes 2 parameters, based on population_density, will output
  # speed int a string
  def speed_of_spread #in months
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

  end

end

#=======================================================================

# DRIV