def ask_for(action)
  puts "What's your #{action}?"
  gets.chomp
end

def create_player(name, balance = 50)
  { name: name , balance: balance }
end
