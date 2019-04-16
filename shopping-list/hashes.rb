#             0        1         2
# CITIES = ["Lisbon", "London", "Paris"]
# COUNTRIES = ["Portugal", "England", "France"]

CITIES = [
  { name: "Lisbon",
    country: "Portugal"
  },
  { name: "London",
    country: "England"
  },
  { name: "Paris",
    country: "France"
  }
]

# CITIES = {
#   "Lisbon" => "Portugal",
#   "London" => "England",
#   "Paris" => "France"
# }

# Lisbon is in Portugal
# def display_cities
#   CITIES.each_with_index do |city, index|
#     country = COUNTRIES[index]
#     puts "#{city} is in #{country}"
#   end
# end

def display_cities
  CITIES.each do |city|
    if city.key?(:population)
      puts "#{city[:name]} is in #{city[:country]} and its population is #{city[:population]}"
    else
      puts "#{city[:name]} is in #{city[:country]}"
    end
  end
end

display_cities

puts "What's the name of the city?"
name = gets.chomp

puts "In which country is #{name} is located?"
country = gets.chomp

puts "What's the population in #{name}?"
population = gets.chomp.to_i

city = {
  name: name,
  country: country,
  population: population
}

CITIES << city

display_cities





