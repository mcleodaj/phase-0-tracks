puts ("What is your hamster's name?")
name = gets.chomp
puts ("How loud is your hamster?")
volume = gets.chomp
volume.to_f
puts ("What color is your hamster's fur?")
color = gets.chomp
puts ("Is this a good hamster to adopt?")
adoption = gets.chomp
puts ("Approx. how old is your hamster?")
age = gets.chomp
if age.empty?
  age=nil
else
  age.to_f
end

puts ("Your hamster's name is #{name}")
puts ("Your hamster's age is #{age}")
puts ("Your hamster's color is #{color}")
puts ("Your hamster's volume is #{volume}")
puts ("Hamster should be adopted: #{adoption}")
