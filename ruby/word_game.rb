class WordGame
	attr_reader :is_over, :guess_count
	
	def initialize
		@guess_count = 0
		@is_over = false
	end
	
	def check_match(word, guess)
		@guess_count += 1
		if word == guess
			@is_over = true
		else
			@is_over = false
		end
	end
	
	def game_over
		@is_over = true
	end
	
	def show_progress(word,guessed_letters)
		display_string = []
		
    	word.chars.each do |char|
    		if guessed_letters.include?(char) == true
      			display_string << char
    		else 
      			display_string << '_'
    		end
    	end
    	
  		p display_string
	end
	
	
	def space(int)
	int.times do
		puts "\n"
	end
end
end





puts "\n"

puts "Welcome to the Word Guessing Game!"
game = WordGame.new

puts "\n"

puts "Player 2, look away!"

puts "\n"

puts "Player 1, Enter a word!"
answer = gets.chomp

game.space(30)
x = 0
guess_arr = []

while !game.is_over
	if x == answer.length
		puts "You suck! You ran out of tries!"
		break
	elsif x < answer.length
		puts "Player 2, try to guess the word!"
		word_guessed = gets.chomp
		
		if guess_arr.include?(word_guessed) == false
			x += 1
		else
			x = x - 1
		end

		guess_check = game.check_match(answer, word_guessed)
	end
	
	game.show_progress(answer, word_guessed)
	
	guess_arr << word_guessed
end

if guess_check == true
	puts "Congratulations! You won in #{game.guess_count} tries!"
end