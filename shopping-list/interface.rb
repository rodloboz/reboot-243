# USER STORIES
# 1) As a User I can list (all) items
# 2) As a User I can add an item
# 3) As a USer I can delete an item
# 4) As a USer I can mark/unmark an item
# 5) As a USer I can import an item from Etsy

# welcome user
# ==== START LOOP => #loop
# display options/menu [list|add|delete|mark|quit]
# ask for user for action
# store answer
# execute the chosen action => #case
# ==== END LOOP

# LISTING
# { name: "iphone", marked: false }
# 1 - [ ] sockets
# 2 - [X] apples
# Go through each item in the list #each_with_index
# Check if item is marked or not
# Display item on the screen

# ADD
# ask user for which item to add
# save/store the answer => String
# create a new Hash { name: "choice", marked: false}
# push item hash into array of ITems

# DELETE
# display items
# ask user what they want to delete (index)
# delete item with index # delete_at(index)

# MARK
# display items
# ask use of which item to mark
# mark that item # => marked: false
# update item in list

require 'byebug'
require_relative 'welcome'
require_relative 'view'
require_relative 'item'

ITEMS = [
  { name: "iphone", marked: false },
  { name: " ruby book", marked: true }
]

puts_welcome

loop do
  display_menu

  ask_for_action
  action = gets.chomp

  case action
  when /^l(ist)?/i
    display_items
  when /a(dd)?/i
    ask_for_item
    name = gets.chomp
    add_item(name)
  when /d(elete)?/i
    display_items
    # ask_for_index(:delete)
    ask_for_index("delete")
    index = gets.chomp
    delete_item(index)
  when /m(ark)?/i
    display_items
    # ask_for_index(:mark)
    ask_for_index("mark")
    index = gets.chomp
    mark_item(index)
  when /q(quit)?/i
    break
  else
    puts "Invalid action..."
  end
end

puts "Goobye!"









