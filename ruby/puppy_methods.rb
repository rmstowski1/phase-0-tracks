class Puppy
  
  def initialize
    puts "Initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num)
    puts "Woof! " * num
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(num)
    puts num * 7
  end
  
  def give_paw
    puts "*gives paw*"
  end
end

class Basketball
  def initialize
    puts "Initializing new basketball instance"
  end
  
  def dribble
    puts "*dribbles basketball*"
  end
  
  def shoot
    puts "*shoots basketball*"
  end
  
end

x = 0
while x < 10

instance_arr = []
m_j = Basketball.new
instance_arr << m_j

instance_arr.each do |instance|
  m_j.dribble
  m_j.shoot
end
x += 1
end

puts (" ")

zeke = Puppy.new
zeke.fetch("tennis ball")
zeke.speak(5)
zeke.roll_over
zeke.dog_years(4)
zeke.give_paw