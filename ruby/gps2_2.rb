# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split input based on space character
  # Iterate through list, assigning each index as a key, default value of 1 within our list has
  # print the list to the console [can you use one of your other methods here?]
# output: our list hash

def create_list(string)
  init_array=string.split(",")
  grocery_list={}
  init_array.each do |item|
    grocery_list[item]=1
  end
  p grocery_list
end


# Method to add an item to a list
# input: hash, item name (key) and optional quantity (value)
# steps: Take new item and new quantity and append to existing hash
# output: updated hash

def add_item(hash, item, quantity=1)
  grocery_list=hash
  if grocery_list.include?item
    grocery_list[item]+=quantity
  else
    grocery_list[item]=quantity
  end
  p grocery_list
end


# Method to remove an item from the list
# input: hash, key
# steps: Take key, check if in hash, remove key and value if in hash
# output: updated

def remove_item(hash, item)
  grocery_list=hash
  if grocery_list.include?item
    grocery_list.delete(item)
  else
    puts "Item not in list."
  end
  p grocery_list
end


# Method to update the quantity of an item
# input: hash, key, quantity 
# steps: Specify the hash we are updating, specify key to be changed, push new value
# output: updated hash

def update_item(hash, item, quantity)
  grocery_list=hash
  grocery_list.include?item ? grocery_list[item]=quantity : (puts "Item not on list.")
  # if grocery_list.include?item
  #   grocery_list[item]=quantity
  # else
  #   puts "Item not on list."
  # end
  p grocery_list
end


# Method to print a list and make it look pretty
# input: hash
# steps: iterate through, and print each key value pair on a new line, using interpolation for formatting
# output: none, printed list to terminal

def print_list(hash)
  grocery_list=hash
  grocery_list.each do |item, quantity|
    puts "You need to get #{quantity} of #{item}"
  end
end


list=create_list("lemonade,tomatoes,onions,ice cream")
update_item(list, "lemonade", 2)
update_item(list, "tomatoes", 3)
update_item(list, "onions", 1)
update_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_item(list, "ice cream", 1)

print_list(list)

# What did you learn about pseudocode from working on this challenge?
#   From this challenge I learned that clean organized pseudocode can really improve the workflow of a project, and make writing the actual code much easier to handle!
# What are the tradeoffs of using arrays and hashes for this challenge?
#   An array would make this challenge much more difficult, as you would need to treat every other index as the key and value, and iterating to adjust them would be much harder
# What does a method return?
#   A method returns whatever the last line of the method is, or the explicit return statement
# What kind of things can you pass into methods as arguments?
#   Objects, arrays, hashes, integers, strings, etc.  Just about any form of variable or code can be passed in.
# How can you pass information between methods?
#   By assigning the initial hash to a variable, we can pass that variable to each method and use the method to update the variable itself.
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   I solidified my grasp of syntax use with hashes through this challenge, and I still need to brush up on passing information between methods cleanly, as I always want to default to global variables despite them being bad coding practice