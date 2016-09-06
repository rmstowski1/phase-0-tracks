/
	- define a method with 1 paramter(string)
		- split string into an array
			- use .reverse to swap first and last name
			- change letters to next letter on ascii chart
		-return new name
*/

def letter_change(real_name)
	real_name.split('').each do |letter|
		if letter == 't'
			letter.sub!(/[t]/, 'v') 
		elsif letter == 'a'
			letter.sub!(/[a]/, 'e')
		elsif letter == 'e'
			letter.sub!(/[e]/, 'i')
		elsif letter == 'i'
			letter.sub!(/[i]/, 'o')
		elsif letter == 'o'
			letter.sub!(/[o]/, 'u')
		elsif letter == 'u'
			letter.sub!(/[u]/, 'a')
		elsif letter == 'b'
			letter.sub!(/[b]/, 'c')
		elsif letter == 'c'
			letter.sub!(/[c]/, 'd')
		elsif letter == 'd'
			letter.sub!(/[d]/, 'f')
		elsif letter == 'f'
			letter.sub!(/[f]/, 'g')
		elsif letter == 'g'
			letter.sub!(/[g]/, 'h')
		elsif letter == 'h'
			letter.sub!(/[h]/, 'j')
		elsif letter == 'j'
			letter.sub!(/[j]/, 'k')
		elsif letter == 'k'
			letter.sub!(/[k]/, 'l')
		elsif letter == 'l'
			letter.sub!(/[l]/, 'm')
		elsif letter == 'm'
			letter.sub!(/[m]/, 'n')
		elsif letter == 'n'
			letter.sub!(/[n]/, 'p')
		elsif letter == 'p'
			letter.sub!(/[p]/, 'q')
		elsif letter == 'q'
			letter.sub!(/[q]/, 'r')
		elsif letter == 'r'
			letter.sub!(/[r]/, 's')
		elsif letter == 's'
			letter.sub!(/[s]/, 't')
		elsif letter == 'v'
			letter.sub!(/[v]/, 'w')
		elsif letter == 'w'
			letter.sub!(/[w]/, 'x')
		elsif letter == 'x'
			letter.sub!(/[x]/, 'y')
		elsif letter == 'y'
			letter.sub!(/[y]/, 'z')
		elsif letter == 'z'
			letter.sub!(/[z]/, 'b') 
		elsif letter == 'A'
			letter.sub!(/[A]/, 'E')
		elsif letter == 'B'
			letter.sub!(/[B]/, 'C')
		elsif letter == 'C'
			letter.sub!(/[C]/, 'D')
		elsif letter == 'D'
			letter.sub!(/[D]/, 'F')
		elsif letter == 'F'
			letter.sub!(/[F]/, 'G')
		elsif letter == 'G'
			letter.sub!(/[G]/, 'H')
		elsif letter == 'H'
			letter.sub!(/[H]/, 'J')
		elsif letter == 'J'
			letter.sub!(/[J]/, 'K')
		elsif letter == 'L'
			letter.sub!(/[L]/, 'M')
		elsif letter == 'M'
			letter.sub!(/[M]/, 'N')
		elsif letter == 'N'
			letter.sub!(/[N]/, 'P')
		elsif letter == 'O'
			letter.sub!(/[O]/, 'U')
		elsif letter == 'P'
			letter.sub!(/[P]/, 'Q')
		elsif letter == 'Q'
			letter.sub!(/[Q]/, 'R')
		elsif letter == 'R'
			letter.sub!(/[R]/, 'S')
		elsif letter == 'S'
			letter.sub!(/[S]/, 'T')
		elsif letter == 'T'
			letter.sub!(/[T]/, 'V')
		elsif letter == 'V'
			letter.sub!(/[V]/, 'W')
		elsif letter == 'W'
			letter.sub!(/[W]/, 'X')
		elsif letter == 'X'
			letter.sub!(/[X]/, 'Y')
		elsif letter == 'Y'
			letter.sub!(/[Y]/, 'Z')
		elsif letter == 'Z'
			letter.sub!(/[Z]/, 'B')
		elsif letter == 'E'
			letter.sub!(/[E]/, 'I')
		elsif letter == 'I'
			letter.sub!(/[I]/, 'O')
		else
			letter.sub!(/[U]/, 'A')
		end
	end
end

def name_change(real_name)
	arr = real_name.split (' ')
	arr.reverse!
	new_str = arr.join(' ')
	
	changed_letters = letter_change(new_str)
	changed_name = changed_letters.join('')
end

names_hash = {}

x = 0
while x = 0

puts "Enter a name: "
full_name = gets.chomp

fake_name = name_change(full_name)

if full_name == "quit"
	break
end

names_hash[:"#{full_name}"] = fake_name

end

names_hash.each {|key, value| puts "#{key} is actually known by #{value}" }

