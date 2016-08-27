/*
	- define function that takes in string parameter
	  	- define new string variable
		- for loop to decrement through inputted string
		- load letters into new string
	- return new string
*/


function reverse(string) {
	var reversed_string = '';
	for (var i = string.length - 1; i >= 0; i--){
		reversed_string += string[i];
	}
	return reversed_string;
}

new_word = reverse("Hello");

if (1 == 1) {
	console.log(new_word)
}