/  - create a hash
	- allow for user input to find out information
	- convert data types if needed
	- print out filled hash
	- let user update a key
   - print updated hash
*/

applicant = { 
	name: gets.chomp.to_s,
	age: gets.chomp.to_i,
	number_of_children: gets.chomp.to_i,
	decor_theme: gets.chomp.to_s,
	fav_color_blue: gets.chomp.match(/true/) != nil,
	fav_color_red: gets.chomp.match(/true/) != nil,
	fav_color_green: gets.chomp.match(/true/) != nil
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
	applicant[user_input] = gets.chomp.to_s
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