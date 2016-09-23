# Detail ask statements
# convert responses to proper answer
# store responses within a hash
# print back info when finished
# Offer update opportunity

paid_unconverted=""
key_update=""

info = {
  :name => nil,
  :age => nil,
  :children => nil,
  :theme => nil,
  :paid => nil
}

puts "Client Name?"
name=gets.chomp
info[:name] = name
puts "Client Age?"
age=gets.chomp.to_i
info[:age] = age
puts "Number of Children?"
children=gets.chomp.to_i
info[:children] = children
puts "Theme?"
theme=gets.chomp
info[:theme] = theme
while paid_unconverted==""
  puts "Has paid? (yes/no)"
  paid_unconverted=gets.chomp
  if paid_unconverted[0]=="y"
    paid_converted=true
  elsif paid_unconverted[0]=="n"
    paid_converted=false
  else
    puts "Please type 'yes' or 'no'."
  end
end
info[:paid] = paid_converted

p info

puts "Would you like to update a field?"
while key_update==""
  puts "What key would you like to update? (type 'none' if no updates)"
  key_update=gets.chomp.downcase
  if key_update[0]==":"
    puts "What would you like the value to be?"
    new_value=gets.chomp
    info[key_update]=new_value
  elsif key_update=="none"
    break
  elsif key_update!=""
    key_update=key_update.to_sym
    puts "What would you like the value to be?"
    new_value=gets.chomp
    info[key_update]=new_value
  end
end

p info


