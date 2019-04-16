john = "john"
paul = "paul"
ringo = "ringo"
george = "george"

names = [john, paul, ringo, george]

names.each { |name| name.upcase }

# map => Array of the same length as the original
upcased_names = names.map { |name| name.upcase }

# map! is a different method than map

# upcased_names = []
# names.each { |name| upcased_names <<  name.upcase }

puts "John Variable:"
p john

puts "Names Array:"
p names

puts "Upcased_Names Array:"
p upcased_names
