/*
	- define function that takes in array parameter
		- for loop as many times as array length
			- run through array and compare string lengths
		- return biggest string	
*/


function longest_word(string_array){
	for(var i = 0; i < string_array.length; i++) {
		if (string_array[i].length > string_array[i+1].length) {
			return string_array[i];
		} else {
			return string_array[i+1];
		}
	}
}

word = longest_word(["long phrase", "longest phrase", "longer phrase"]);
console.log("The longest string is: " + word);