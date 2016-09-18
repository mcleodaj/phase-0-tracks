puts "What is your name?"
name=gets.chomp 
puts "How old are you?"
age=gets.chomp.to_i
puts "What year were you born?"
year=gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
food=gets.chomp
puts "Would you like to enroll in the company's health insurance? (yes/no)"
insurance=gets.chomp

if food=="yes"
  food=true
elsif food=="no"
  food=false
else
  food=nil
end

if insurance=="yes"
  insurance=true
elsif insurance=="no"
  insurance=false
else
  insurance=nil
end


yearDiff=2016-age
correctYear=(yearDiff==year)

if correctYear && (food || insurance))==true
  puts "Probably not a vampire"
elsif correctYear==false && (food==false || insurance==false)
  puts "Probably a vampire"
elsif correctYear==false && food==false && insurance==false
  puts "Almost certainly a vampire"
elsif name=="Drake Cula" || name=="Tu Fang"
  puts "Definitely a vampire"
else
  puts "Results inconclusive"
end
