cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]


@list_of_cities = []
    cities_lived_in.each do |human_names,cities|
        cities.each do |city|
            if !@list_of_cities.include?(city)
                @list_of_cities << city
            end
        end
        @list_of_cities
    end

# p list_of_cities


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

lived_in_phi = []
cities_lived_in.each do |human_name,cities|
    if cities.include?("Philadelphia")
    lived_in_phi << human_name.to_s.capitalize!
    end
end
p lived_in_phi



# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
number_of_people_per_city = Hash.new(0)

cities_lived_in.each do |name,cities|
    @list_of_cities.each do |city|
        if cities.include?(city)
            number_of_people_per_city[city] += 1
        end
    end
end
p number_of_people_per_city