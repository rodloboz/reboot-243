# welcome user
# => START LOOP HERE
# ask user for the first number / puts
# store the user answer / gets.chomp [first_number]
# ask user for the second number
# store the user answer / [second_number]
# (ask user for the operator) [+ - / *]
# (store operator [operator]) => String
# CASE
# add the two numbers together
# display result
# ask if user wants to continue
# LOOP ENDS HERE
# say goodbye

#.               8.             2.           "*"
def calculate(first_number, second_number, operator)
  case operator
  # if operator == '+' || operator == 'add'
  when /^\+|add$/i
    first_number + second_number
  when /^\-|subtract$/i
    first_number - second_number
  when /^\*|multiply$/i
    first_number * second_number
  when /^\/|divide$/i
    first_number / second_number
  #else
  #  "Invalid"
  end
end

def welcome
  puts "Welcome to my Calculator!"
  puts "========================="
  puts "\n\n\n"
end

def ask_for(ordinal)
  puts "What's the #{ordinal} number?"
  print "> "
end

welcome

answer = 'y'

puts "The condition is: #{answer =~ /^y|yes$/i}"
while answer =~ /^y|yes$/i
  ask_for(:first)
  first_number = gets.chomp.to_i

  ask_for(:second)
  second_number = gets.chomp.to_i

  puts "What's the operation: [+|-|/|*]"
  operator = gets.chomp

  result = calculate(first_number, second_number, operator)

  puts "Result: #{result}"

  puts "Do you want to continue?"
  answer = gets.chomp
end

puts "Goodbye!"

