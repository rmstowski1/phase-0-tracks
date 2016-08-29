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

	- define a function that takes in an integer for length
		- declare blank array
		- for loop for as many times as the taken in integer
			- generate random number for length of string
			- generate random string of random length and load into array
		-  return array
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

function create_array(num_of_str){
	new_arr = [];
	for(var i = 0; i < num_of_str; i++){
		rand_num = Math.floor((Math.random()*10) + 1);
		rand_str = Math.random().toString(36).substr(2, rand_num);
		new_arr.push(rand_str)
	}
	return new_arr;
}

long_word = longest_word(["long phrase", "longest phrase", "longer phrase"]);
console.log("The longest string is: " + long_word);

console.log("---------------------");

have_a_match = compare_obj({name: "Steven", age: 54}, {name: "Tamir", age:54});
console.log("---------------------");
console.log("Matching key or value?: " + have_a_match);

console.log("---------------------");

for(var i = 0; i < 10; i++){
	rand_arr = create_array(4);
	console.log(rand_arr);
	console.log(longest_word(rand_arr));
}









