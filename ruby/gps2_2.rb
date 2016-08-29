# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array
  # load array into has
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: prints list

# Method to add an item to a list
# input: item name and optional quantity
# steps: Use << to load new item and quantity into existing hash
# output: prints list

# Method to remove an item from the list
# input: item name
# steps: iterate through has to find equal item name and remove
# output: prints list

# Method to update the quantity of an item
# input: item name and quantity
# steps: iterate through the has to update item quantity
# output: prints list

# Method to print a list and make it look pretty
# input: list to be printed
# steps: iterate through has to print each value
# output: prints list

def make_list
	puts "Create a new list separated by spaces:"
	new_list = gets.chomp
	list_arr = new_list.split(' ')
	list_hash = {}
	
	quantity = 0
	list_arr.each do |i|
		list_hash[i] = quantity
	end
	list_hash
end

def add_item(list_name, item_name, new_num)
	list_name[item_name] = new_num
	list_name
end

def delete_item(list_name, item_name)
	num = 0
	until num == list_name.length+5
		if list_name[:item_name][num] == item_name
			list_name[:item_name][num] = " "
			list_name[:item_quant][num] = 0
		end
		num +=1
	end
	list_name
end

def update_quantity(list_name, item_name, new_num)
	num = 0
	until num == list_name.length+5
		if list_name[:item_name][num] == item_name
			list_name[:item_quant][num] = new_num
		end
		num += 1
	end
	list_name
end

def print_list(list_name)
	 num = 0
	 until num == list_name.length+4
	 puts "#{list_name[:item_name][num]}, qty: #{list_name[:item_quant][num]}"
	 num +=1
	 end
	 list_name
end

groc_list = make_list
print_list(groc_list)

puts "-----------------------------------------"

groc_list == add_item(groc_list, "Lemonade", 2)
groc_list == add_item(groc_list, "Tomatoes", 3)
groc_list == add_item(groc_list, "Onions", 1)
groc_list == add_item(groc_list, "Ice Cream", 4)
print_list(groc_list)

puts "-----------------------------------------"

/groc_list = update_quantity(groc_list, "Ice Cream", 2)
print_list(groc_list)

puts "-----------------------------------------"

groc_list = delete_item(groc_list, "Lemonade")
print_list(groc_list) */


#What did you learn about pseudocode from working on this challenge?
/
	I learned that pseudocoding thoroughly before hand is very important
	and organizes you program well.
*/

#What are the tradeoffs of using arrays and hashes for this challenge?
/
	It's alot easier to set a value to an item in a hash then an array.

*/

#What does a method return?
/
	A method returns a value or nil.
*/

#What kind of things can you pass into methods as arguments?
/
	Things you can pass into methods as arguments are ints, strings,
	variable names and so on.
*/

#How can you pass information between methods?
/
	You can pass info between methods by using global variables
*/

#What concepts were solidified in this challenge, and what concepts are still confusing?
/
	Solidified concepts in this challenge are iterating and updating
	hashes.
*/