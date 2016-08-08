puts "Name:"
name = gets.chomp
puts "Volume level:"
volLevel = gets.chomp
volLevel = volLevel.to_i
puts "Fur color:"
furColor = gets.chomp
puts "Good for adoption? [Y/N]"
adopt = gets.chomp
adopt = !!adopt
puts "Estimated age:"
age = gets.chomp
age = age.to_i

puts " "

puts "Name: #{name}"
puts "Volume level: #{volLevel}"
puts "Fur color: #{furColor}"
puts "Good for adoption? [Y/N]: #{adopt}"
puts "Estimated age: #{age}"

puts " "
