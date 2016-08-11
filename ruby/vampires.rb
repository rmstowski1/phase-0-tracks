puts "What is your name?"
name = gets.chomp

puts"How old are you?"
age = gets.chomp

puts "What year were you born?"
year = gets.chomp
year = year.to_i

correctAge = 2016 - year

puts "Year: #{year}"
puts "#{correctAge}"

puts "Our company cafeteria serves garlic bread. Should we order some for you? [Y/N]"
garBread = gets.chomp

puts "Would you like to enroll in the company's health insurance? [Y/N]"
healthInsur = gets.chomp

case age 
when age == correctAge && garBread = "Y" || healthInsur = "Y"
	puts "Probably not a vampire."
when age != correctAge && garBread = "N" || healthInsur = "N"
	puts "Probably a vampire."
when age != correctAge && garBread= "N" && healthInsur = "N"
	puts "Almost certainly a vampire."
when name = "Drake Cula" || name = "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
			


		

