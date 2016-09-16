def search_array(num_arr, int)
	p num_arr
	
	if num_arr.include?(int) == false
		p nil
	end
	
	num_arr.each do |x|
		if x == int
			p num_arr.index(x)
		end
	end
end

def fib(int)
	a = 0
	b = 1
	int_arr = []
	
	int.times do 
		temp = a
		a = b
		b = temp + a
		
		int_arr << temp
	end
	p int_arr
end

# - define a method that takes in an array
# 	- sort array in numerical order
# 	- return new arr
# - end

def sort(arr)
	new_arr = arr.sort
	p new_arr
end


num_arr = [42, 89, 23, 1]
search_array(num_arr, 1)

search_array(num_arr, 2)

fib(100)

sort([5,1,7,3,10,65,83])