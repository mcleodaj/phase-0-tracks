def block_method
  puts "The initial message of the method"
  yield (5,3)
end

block_method { |num1, num2| puts "The yield message of the block #{num1} times #{num2} is equal to #{num1*num2}"}