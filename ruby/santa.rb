class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    @gender=gender 
    @ethnicity=ethnicity
    @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age=0
  end

  def speak()
    puts "Ho, ho, ho!  Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age+=1
  end

  def get_mad_at(reindeer)
    if @reindeer_ranking.include?reindeer 
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking << reindeer
    end
  end

end

santas=[]
count=0
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
while count<100
  santas << Santa.new(example_genders[rand(0..6)], example_ethnicities[rand(0..6)])
  santas[count].age = rand(0..140)
  p santas[count].ethnicity
  p santas[count].gender
  p santas[count].age
  count+=1
end

# santas[1].celebrate_birthday
# p santas[1].ethnicity
# p santas[1].age
# santas[1].get_mad_at("Dasher")
# santas[1].gender = "gender fluid"
# p santas[1]
