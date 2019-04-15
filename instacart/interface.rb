require 'byebug'

# 1. Welcome user
# 2. Display Store Items
# START LOOP
# 3. Ask User for Item
# 4. Update Cart
# END LOOP
# Calculate and Display Bill

ITEMS = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

# CART = {}
CART = Hash.new(0)

def welcome
  puts "Welcome to Instacart!"
  puts "====================="
  puts "\n"
end

def display_store
  puts "In our store today:"
  #               key   value
  ITEMS.each do |item, price|
    puts "#{item}: #{price}€"
  end
end

def ask_for_item
  puts "Which item? (or 'quit' to checkout)"
end

def update_cart(item)
  # if CART.key?(item)
  #   CART[item] += ITEMS[item]
  # else
  #   CART[item] = ITEMS[item]
  # end
  CART[item] += ITEMS[item]
end

def display_bill
  total = 0
  puts "-------BILL---------"
  CART.each do |item, price|
    total += price
    puts "#{item}: #{price}€"
  end
  puts "TOTAL: #{total}€"
  puts "--------------------"
end

# PROGRAM STARTS HERE:
welcome
display_store

loop do
  ask_for_item
  item = gets.chomp

  break if item =~ /^q(uit)?$/i

  if ITEMS.key?(item)
    update_cart(item)
  else
    puts "Sorry, we don't have #{item}"
  end
end

display_bill






