# add_item("socks")
def add_item(name, marked = false)
  ITEMS << { name: name, marked: marked}
end

def delete_item(index)
  invalid_index(index)

  ITEMS.delete_at(index.to_i - 1)
end

def mark_item(index)
  # ITEMS array of hashes
  # item { name: , marked: }
  invalid_index(index)

  # mark that item # => marked: false
  # update item in list

  # convert string to a valid index
  index = index.to_i - 1

  item = ITEMS[index]
  item[:marked] = true
end

def invalid_index(index)
  until index =~ /^[1-#{ITEMS.length}]$/
    puts "Item does not exist"
    puts "Plese select (1-#{ITEMS.length})"
    index = gets.chomp
  end
end
