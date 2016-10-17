# Bring in GEMS
require 'sqlite3'
#require 'faker'

# Build initial DB
db = SQLite3::Database.new("groceries.db")

create_table_1 = <<-SQL
  CREATE TABLE buy_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INTEGER,
    cost INTEGER
  )
SQL

create_table_2 = <<-SQL
  CREATE TABLE history_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INTEGER,
    cost INTEGER,
    day VARCHAR(255),
    buyer_id INT,
    FOREIGN KEY (buyer_id) REFERENCES buyer_list(id)
  )
SQL

create_table_3 = <<-SQL
  CREATE TABLE buyer_list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

puts("Initializing tables")
begin
  db.execute(create_table_1)
rescue
  SQLite3::SQLException
end
begin
  db.execute(create_table_2)
rescue
  SQLite3::SQLException
end
begin
  db.execute(create_table_3)
rescue
  SQLite3::SQLException
end


def view_list(db)
  list=db.execute("SELECT * FROM buy_list")
  puts("Item  Quantity  Cost")
  for i in list
    puts ("#{i[1]}  #{i[2]}  #{i[3]}")
  end
end

def add_user(db)
  puts "What is the name of the user you'd like to add?"
  user=gets.chomp()
  add_user_db(db, user)
end

def add_user_db(db, name)
  db.execute("INSERT INTO buyer_list (name) VALUES (?)", [name])
end

# Add Item to Buy List DB
def add_item(db)
  continue="y"
  while continue!="n" && continue=="y"
    puts "Enter item name"
    item=gets.chomp
    puts "Enter amount"
    amount=gets.chomp().to_i
    puts "Enter cost"
    cost=gets.chomp().to_i
    add_item_db(db, item, amount, cost)
    puts "Would you like to enter another item? (yes/no)"
    answer=gets.chomp
    continue=answer[0]
  end
end

def add_item_db(db, item, quantity, cost)
  db.execute("INSERT INTO buy_list (item, quantity, cost) VALUES (?, ?, ?)", [item, quantity, cost]) 
end

# Remove Item from Buy List DB
def remove_item(db)
  puts "Enter item you'd like to remove"
  item=gets.chomp()
  remove_item_db(db, item)
end

def remove_item_db(db, item)
  temp_data=db.execute("DELETE FROM buy_list WHERE item=?", [item])
end

# Create Checkout method, remove all current items from Buy List DB, Move to History with Date
def checkout(db)
  puts "Which user is buying? Inser their ID # from the output below:"
  list=db.execute("SELECT * FROM buyer_list")
  puts ("ID  User")
  for i in list
    puts ("#{i[0]}  #{i[1]}")
  end
  id=gets.chomp.to_i
  checkout_db(db, id)
end

def checkout_db(db, buyer)
  temp_data=db.execute("SELECT * FROM buy_list")
  db.execute("DROP TABLE buy_list")
  db.execute("CREATE TABLE buy_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INTEGER,
    cost INTEGER
  )")
  day=Time.now.strftime("%d/%m/%Y")
  for i in temp_data
    db.execute("INSERT INTO history_list (item, quantity, cost, day, buyer_id) VALUES (?,?,?,?,?)", [i[1],i[2],i[3],day,buyer])
  end
end

def view_history(db)
  list=db.execute("SELECT history_list.item, history_list.quantity, history_list.cost, history_list.day, buyer_list.name FROM buyer_list JOIN history_list on buyer_list.id = history_list.buyer_id")
  puts "Item  Quantity  Cost Day Buyer"
  for i in list
    puts ("#{i[0]}  #{i[1]}  #{i[2]}  #{i[3]} #{i[4]}  #{i[5]}")
  end
end


def main_program(db)
  keyword=""
  while keyword != 'exit'
    puts "Select what you'd like to do:"
    puts "1. View current shopping list"
    puts "2. Add a user"
    puts "3. Add an item to the list"
    puts "4. Remove an item from the list"
    puts "5. Go Grocery shopping"
    puts "6. View Grocery History"
    puts "type 'exit' if you are finished"
    keyword=gets.chomp()
    puts keyword
    if keyword=='1'
      view_list(db)
    elsif keyword=='2'
      add_user(db)
    elsif keyword=='3'
      add_item(db)
    elsif keyword=='4'
      remove_item(db)
    elsif keyword=='5'
      checkout(db)
    elsif keyword=='6'
      view_history(db)
    end
  end
end


main_program(db)