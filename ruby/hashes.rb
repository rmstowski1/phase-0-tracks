/  
   - Gather user info and convert data types if needed
    - create a hash
	- store information
	- print out filled hash
	- let user update a key
   - print updated hash
*/
puts "Name: "
full_name = gets.chomp

puts "Age: "
client_age = gets.to_i

puts "Number of children: "
num_of_chil = gets.to_i

puts "Decor Theme: "
decor = gets.chomp

puts "Favorite color blue(y/n): "
blue = gets.match(/y/) != nil

puts "Favorite color red(y/n): "
red = gets.match(/y/) != nil

puts "Favorite color green(y/n): "
green = gets.match(/y/) != nil

applicant = { 
	name: full_name,
	age: client_age,
	number_of_children: num_of_chil,
	decor_theme: decor,
	fav_color_blue: blue,
	fav_color_red: red,
	fav_color_green: green
}

p applicant

puts "Update a key:"
user_input = gets.chomp
if user_input == "none"
	p applicant
	exit
else
	if user_input == "name" || user_input == "decor_theme"
	user_input = user_input.to_sym
	applicant[user_input] = gets.chomp
	elsif user_input == "age" || user_input == "number_of_children"
	user_input = user_input.to_sym
	applicant[user_input] = gets.chomp.to_i
	else
		user_input = user_input.to_sym
		applicant[user_input] = gets.chomp.match(/true/) != nil
	end
end

p applicant

exit!