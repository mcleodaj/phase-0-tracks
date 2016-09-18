def foodMethod (food)
  if food=="yes"
    return true
  elsif food=="no"
    return false
  end
end

def insuranceMethod(insurance)
  if insurance=="yes"
    return true
  elsif insurance=="no"
    return false
  end
end

puts "How many employees would you like to process?"
amount=gets.chomp.to_i
result=""

while (amount > 0)
  puts "What is your name?"
  name=gets.chomp 
  puts "How old are you?"
  age=gets.chomp.to_i
  puts "What year were you born?"
  year=gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  food=gets.chomp
  food=foodMethod(food)
  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  insurance=gets.chomp
  insurance=insuranceMethod(insurance)
  answer=""
  puts "Do you have any allergies? (type 1 at a time until finished, type 'done' when finished or if no allergies)"
  while answer!="done"
    answer=gets.chomp
    if answer=="sunshine"
      result="Probably a vampire"
      break
    end
  end

  yearDiff=2016-age
  correctYear=(yearDiff==year)
  if result==""
    if correctYear==true && (food || insurance)==true
      result="Probably not a vampire"
    end
    if correctYear==false && (food==false || insurance==false)
      result="Probably a vampire"
    end
    if correctYear==false && food==false && insurance==false
      result="Almost certainly a vampire"
    end
    if name=="Drake Cula" || name=="Tu Fang"
      result="Definitely a vampire"
    end
    if result==""
      result="Results inconclusive"
    end
  end
  puts result
  puts ""
  result=""
  amount=amount-1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
