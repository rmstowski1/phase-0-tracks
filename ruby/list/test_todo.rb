class TodoList
	def initialize(chore_arr)
		@chore_arr = chore_arr
	end

	def get_items
		p @chore_arr
	end

	def add_item(new_item)
		@chore_arr << new_item
		p @chore_arr
	end

	def delete_item(item)
		@chore_arr.delete_if {|val| val == item}
		p @chore_arr
	end

	def get_item(x)
		p @chore_arr[x]
	end
end




