/
	Class: 

	Fire-breathing dragon
---------------------------
	Attributes: 

	Color
	age
	wing-span
---------------------------
	Methods:

	breath_fire
	fly(distance)
	sleep
*/

class Dragon

	attr_reader :name, :age, :wingspan
	attr_accessor :color

	def initialize(drag_name, drag_age, drag_span, drag_color)
		puts "Initializing new dragon..."
		@name = drag_name
		@age = drag_age
		@wingspan = drag_span
		@color = drag_color
	end

	def breathe_fire
		puts "*breathes fire* OUCH!"
	end

	def fly(distance)
		puts "The dragon flew #{distance} miles."
	end

	def sleep
		puts "The dragon is very much asleep now."
	end
end

drag_arr = []

x = 0
while x < 10
	puts "Enter a name(or exit if done): "
	name_input = gets.chomp.to_s
	
	if name_input == "exit"
		break
	end

	puts "Enter an age: "
	age_input = gets.chomp.to_i

	puts "Enter a wing-span: "
	span_input = gets.chomp.to_i

	puts "Enter a color: "
	color_input = gets.chomp.to_s

	drag_arr << Dragon.new(name_input, age_input, span_input, color_input)
    x += 1
end

puts ('')

color_arr = ["blue", "black", "green", "white", "yellow", "purple", "brown", "orange", "red"]

drag_arr.length.times do |i|
	puts "The dragons name is #{drag_arr[i].name}."
	puts "The dragon is #{drag_arr[i].age} years old."
	puts "The dragons wing-span is #{drag_arr[i].wingspan} feet long."
	puts "It has #{drag_arr[i].color} scales."
	puts "------------------------------------"
	drag_arr[i].color=color_arr.sample
	puts "Now it has #{drag_arr[i].color} scales."
	drag_arr[i].breathe_fire
	drag_arr[i].fly(1000)
	drag_arr[i].sleep
	puts (" ")
end


