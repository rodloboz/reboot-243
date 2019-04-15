# String
"Hello, let's recap!".length

# Integer
6.odd?

# Range
(1..10).size

# Boolean
true.to_s

# Array (LISTS)
["a", "b", "c"].sample

# Hash (DICTIONARIES)
{
  first_name: "Rui",
  nationality: "Portuguese"
}.key(:first_name)

# each
array = ["a", "b", "c"]

#            do             end
# array.each { |el| puts el }
array.each do |element|
  puts element
end
