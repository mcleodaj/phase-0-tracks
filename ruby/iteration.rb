def block_method
  puts "The initial message of the method"
  num1=4
  num2=3
  num3=num1*num2
  yield(num1, num2, num3)
end

block_method { |num1, num2, num3| puts "The yield message of the block #{num1} times #{num2} is equal to #{num3}"}

pet_array=["Dogs","Cats","Parrots","Ferrets","Horses","Fish"]
sport_hash={ alex: "gymnastics", john: "basketball", emily: "soccer", jane: "softball", david: "dance" }

pet_array.each do |pet_type|
  puts pet_type
  pet_type=pet_type.next
end

sport_hash.each {|name, sport| puts "#{name} likes #{sport}"}


pet_array.map! do |pets|
  puts pets
  pets.upcase
end

p pet_array

# array.delete_if {|number| number>=5 }
# array.keep_if {|number| number>=5 }
# array.take_while{|x| x>10}
# array.drop_while{|x| x<5}

# hash.delete_if {|number, name| number>=5 }
# hash.keep_if {|number, name| number>=5 }
# hash.has_key(5)