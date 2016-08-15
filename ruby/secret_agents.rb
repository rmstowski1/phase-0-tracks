/ - define a method that takes in a string
		- create a loop to run through the string
			- in that loop, change each letter to the next letter in the alphabet
		- print results

  - define a method that takes in a string
  		- create a loop to run through the string
  			- change each letter of the string to the previous letter in the alphabet
  		- print results
*/

def encrypt(str)
	index = 0

	while index < str.length
		str[index] = str[index].next
		index += 1
	end
   
   p str	
end

def decrypt(str1)
	index = 0

	while index < str1.length
		str1[index] = (str1[index].ord-1).chr
		index += 1
	end

	p str1
end

puts "Would you like to decrypt or encrypt a password?"
user_input = gets.chomp

puts "What is the password you would like to change?"
user_pass = gets.chomp

if user_input == "decrypt"
	decrypt(user_pass)
else 
	encrypt(user_pass)
end

exit!

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))

/ this call works because it first executes the encrypt call
and then continues with the decrypt call reverting it back to normal
*/



