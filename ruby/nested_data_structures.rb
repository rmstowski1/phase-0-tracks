highway_cars = {
			car1: {
				car_name:'BMW',
				people_in_car: [						
					'John' 
				]
			},
			car2: {
				car_name:'Mercedes',
				people_in_car: [
					'Chris',
					'Gene',
					'Venesssa'
				]
			},
			car3: {
				car_name:'Lexus',
				people_in_car: [
					'Caroline',
					'Gary',
					'Patty'
				]
			}				
}

puts highway_cars[:car1][:car_name]

puts highway_cars[:car2][:people_in_car][0]

puts highway_cars[:car3][:people_in_car][0,2]

highway_cars[:car2][:people_in_car].push('Greg')

puts highway_cars[:car2][:people_in_car]