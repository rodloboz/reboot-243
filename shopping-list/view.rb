def display_menu
  puts "      Menu     "
  puts "==============="
  puts "1. (L) List"
  puts "2. (A) Add"
  puts "3. (D) Delete"
  puts "4. (M) Mark"
  puts "\n"
end

def display_items
  ITEMS.each_with_index do |item, index|
    checked = item[:marked] ? "X" : " "
    puts "#{index + 1} - [#{checked}] #{item[:name]}"
  end
end

def ask_for_action
  puts "Which action?"
  print "> "
end

def ask_for_item
  puts "Which item do you want to add?"
  print "> "
end

#              delete | mark
def ask_for_index(action)
  puts "Which item do you want to #{action}? (1-#{ITEMS.length})"
end



