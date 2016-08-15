def make_array(item1, item2, item3)
	item_arr = [item1, item2, item3]
	p item_arr
end

def add_item(blank_arr = [], a)
	blank_arr << a
	p blank_arr
end

first_Array = [1, 2, 3, 4, 5]
p first_Array

first_Array.delete_at(2)

first_Array.insert(2, 7)
p first_Array

first_Array.shift
p first_Array

if result = first_Array.include?(2)
	puts "Item is included"
end

second_array = ["egg", "flour", "milk"]

third_array = first_Array + second_array
p third_array

make_array("hi", "hey", "hello")
add_item([1, 2, 3, 4, 5], 6)