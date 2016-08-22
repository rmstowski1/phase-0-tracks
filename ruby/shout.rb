#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(words)
#		"!!!" + words + "!!! :D"
#	end
#end

#puts Shout.yell_angrily("I HATE YOU")
#puts Shout.yelling_happily("IM SO HAPPY")

module Shout
	def shout_phrase(words)
		words + "!!!!"
	end
end

class Coach
	include Shout
end

class Mom
	include Shout
end

head_coach = Coach.new
puts head_coach.shout_phrase("GET YOUR HEAD IN THE GAME")

cheering_mom = Mom.new
puts cheering_mom.shout_phrase("YOU CAN DO IT")