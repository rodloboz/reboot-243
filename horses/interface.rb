# HORSE RACE
# 1. Welcome Player
# 2. Create a Player { nickname: , balance: 50 }
# 3. List Horses
# 4. Get User Pick/Bet
# => user picks correct index
# => if not ask again
# 5. Run Race Array#sample
# 6. Determine Result

# => Make it work for a single race
# => Make it work for multiple races
# => Player can go broke


# each_with_index
# 1 - NAme of horse
# 2 - Name of second horse...

require_relative 'welcome'
require_relative 'player'
require_relative 'horses'

HORSES = [
  "Sugar",
  "Seabiscuit",
  "Asteroid",
  "Ruby",
  "Corleone",
  "Michael Bolton",
  "Marco Paulo"
]

welcome

name = ask_for(:name)

player = create_player(name)


puts "This is the race starting roster:"
list_horses(HORSES)

puts "Pick the winning horse (1-#{HORSES.length}):"
choice = gets.chomp

until choice =~ /^[1-#{HORSES.length}]$/
  puts "Please pick a valid horse (1-#{HORSES.length}):"
  choice = gets.chomp
end
horse_index = choice.to_i - 1

# run race
winner = run_race

if HORSES[horse_index] == winner
  puts "Congrats! #{winner} won the race! You're victorious!"
else
  puts "#{winner} won the race! You're a loser!"
end











