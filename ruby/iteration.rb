
def what
	puts "what?"
	3.times {yield}
end

what { puts "I'm not repeating myself"}



fruits_array = ["apple", "orange", "pear"]

p fruits_array

fruits_array.each do |fruitname|
	p fruitname
end

p fruits_array

fruits_array.map! do |fruitname|
	fruitname.upcase
end 

p fruits_array 



name_hash = {john: 'Jack', richard: 'Rick'}

p name_hash

name_hash.each do |form, name|
	puts ("#{name} is a nickname of #{form.capitalize}")
end

p name_hash

upper_nicknames = name_hash.map do |form, name|
	name.upcase
end

p upper_nicknames



letters_arr = ["a", "b", "c", "d"]

p letters_arr

letters_arr.delete_if {|letter| letter < "c"}

p letters_arr



letters_arr2 = ["a", "b", "c", "d"]

p letters_arr2

letters_arr2.keep_if {|letter| letter < "d"}

p letters_arr2



letters_arr3 = ["a", "b", "c", "d"]

p letters_arr3

letters_arr3.reject! {|letter| letter <= "b"}

p letters_arr3



letters_arr4 = ["a", "b", "c", "d"]

p letters_arr4

letters_arr4.take_while {|letter| letter < "c"}



easy_hash = {1 => 2, 2 => 4, 4 => 6}

p easy_hash

easy_hash.delete_if {|key, value| key > 2}

p easy_hash


easy_hash2 = {1 => 2, 2 => 4, 4 => 6}

p easy_hash2

easy_hash2.keep_if {|key, value| key < 4}

p easy_hash2

easy_hash3 = {1 => 2, 2 => 4, 4 => 6}

p easy_hash3

easy_hash3.reject! {|key, value| key > 1}

p easy_hash3

easy_hash4 = {1 => 2, 2 => 4, 4 => 6, 6 => 8}

p easy_hash4

easy_hash4.take_while {|key, value| key  < 6}




