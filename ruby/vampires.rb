
puts "How many employees are being processed?"
numOfEmp = gets.to_i

num = 0

while num < numOfEmp

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? [Y/N]"
garBread = gets.chomp

puts "Would you like to enroll in the company's health insurnace policy? [Y/N]"
healthInsur = gets.chomp

num1 = 1

while num1 == 1
puts "Name any allergies:"
allerg = gets.chomp
if allerg == "sunshine"
	puts "Probably a vampire"
	exit!
elsif allerg == "done"
	break
end
end

correctAge = 2016 - year

case
when age == correctAge && (garBread == "Y" || healthInsur == "Y")
	puts "Probably not a vampire"
when age != correctAge && (garBread == "N" || healthInsur == "N")
	puts "Probably a vampire"
when age != correctAge && (garBread == "N" && healthInsur == "N")
	puts "Almost certainly a vampire"
else
	puts "Results inconclusive."
end

num += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
			


		

