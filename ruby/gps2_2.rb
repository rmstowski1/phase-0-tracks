# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create list
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?] Yes
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: store method to add item to list
# output: print groc_list

# Method to remove an item from the list
# input: list, item to be removed
# steps: use delete_if
# output: new list

# Method to update the quantity of an item
# input: list, item, quantity
# steps: access hash to update quant at key
# output: new list

# Method to print a list and make it look pretty
# input: list
# steps: iterate through hash
# output: full list

# second_hash = {}
# def make_list2(second_hash, item, quantity)
# 	list_arr2 = item.split(' ')

# 	list_arr2.each do |item|
# 		second_hash[item] = 0
# 	end
# end


def make_list
	puts "Enter a new list: "
	new_list = gets.chomp
	list_arr = new_list.split(' ')
	list_hash = {}

	quant = 0
	list_arr.each do |i|
	list_hash[i] = quant
	end

	list_hash
end

def add_item(list_name, item, new_quant) 
	  if list_name.has_key?(item)
	    list_name
	  else
	  	list_name[item] = new_quant
	  end
	  list_name
end

def remove_item(list_name, item)
	list_name.delete(item)
	list_name
end

def update_quantity(list_name, item, quantity)
	if list_name.has_key?(item)
		list_name[item] += quantity
	end
end

def print_list(list_name)
	list_name.each {|key,value|
		puts "#{key}; qty: #{value}"
	}
end

groc_list = make_list

puts " "

add_item(groc_list, "Lemonade", 2)
add_item(groc_list, "Tomatoe", 3)
add_item(groc_list, "Onion", 1)
add_item(groc_list, "Ice cream", 4)

remove_item(groc_list, "Lemonade")

update_quantity(groc_list, "Ice cream", 1)

print_list(groc_list)

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