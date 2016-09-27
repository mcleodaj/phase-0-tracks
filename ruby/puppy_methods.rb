class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}"
    toy
  end

  def speak(number)
    puts ("Woof "*number)
  end

  def rollover()
    puts ("*rolls over*")
  end

  def dog_years(years)
    age=years*7
  end

  def sit()
    puts ("*sits*")
  end

  def initialize()
    puts ("Initializing new Puppy instance...")
  end
end

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.rollover
p fido.dog_years(5)
fido.sit

class Dancer
  def initialize()
    puts "Creating dancer"
  end

  def bust_a_move()
    puts "The dancer busts a move!"
  end

  def enter_the_circle()
    puts "The dancer has entered the circle!"
  end
end

count=0
data=[]
while count<50
  data[count]=Dancer.new
  count+=1
end

data.each{|x| x.bust_a_move}
data.each{|x| x.enter_the_circle}