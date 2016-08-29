/*
	- define function that takes in array parameter
		- for loop as many times as array length
			- run through array and compare string lengths
		- return biggest string	

	- define a function that takes in two objects
		- IF the objects have matching key or value
			- return true
		- Else
			- return false
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

function compare_obj(object1, object2){
	if (object1.length == object2.length){
		
		console.log(object1);
		console.log(object2);
		
		if ((object1.name == object2.name) || (object1.age == object2.age)){
				return true;
			} else {
				return false;
			}
		}
}

word = longest_word(["long phrase", "longest phrase", "longer phrase"]);
console.log("The longest string is: " + word);

have_a_match = compare_obj({name: "Steven", age: 54}, {name: "Tamir", age:54});
console.log(have_a_match);







