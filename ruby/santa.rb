class Santa
	
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def about
		puts "This santa is #{@gender} and #{@ethnicity}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
    	@age = @age + 1
    	puts "I just turned #{@age}"
	end
	
	def get_mad_at(rein_name)
		@reindeer_ranking.each do |name|
			if name == rein_name
				rein_pos = @reindeer_ranking.index(name)
				@reindeer_ranking = @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(rein_pos))
			end
		end
		p @reindeer_ranking
	end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "transexual", "neutrois", "androgyne", "cis", "pangender", "intersex", "transfeminine", "cis female", "cis male", "other", "N/A"]
example_ethnicities = ["Black", "Latino", "White", "Asian","Native-American", "Middle-eastern","Pacific-islander", "Two or more races", "prefers not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  puts " "
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[i].about
  santas[i].speak
  santas[i].eat_milk_and_cookies("snickerdoodle")
  @age = rand(0..140)
  puts "I am #{@age} years old"
end

puts ' '

C_Cringle = Santa.new("Male","White")
C_Cringle.about
C_Cringle.gender="female"
puts "Now this santa is #{C_Cringle.gender}"
C_Cringle.speak
C_Cringle.eat_milk_and_cookies("snickerdoodle")
C_Cringle.celebrate_birthday
C_Cringle.get_mad_at("Dasher")