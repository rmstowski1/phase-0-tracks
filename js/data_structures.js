var colors = ["blue", "green", "black", "purple"];

var horses = ["Ed", "George", "Lex", "Liz"];

colors.push("yellow");

horses.push("Carl");

var colored_horses = {};
if (horses.length == colors.length){
		for(var i = 0; i <= horses.length; i++){
		colored_horses[horses[i]] = colors[i];
	}
}

console.log(horses);
console.log("");

console.log(colors);
console.log("");

console.log(colored_horses["Ed"]);
console.log(colored_horses["Lex"]);

function Car(make, model, year, color){

	this.make = make;
	this.model = model;
	this.year = year;
	this.color = color;

	this.accel = function () { console.log("vroom vroom");};
}

newCar = new Car("Lexus", "LFA", 2014, "dark grey");
newCar.accel();

console.log("")

anotherNewCar = new Car("BMW", "I8", 2016, "black");
anotherNewCar.accel();