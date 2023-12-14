characters = [
    {
        "name": "Luke Skywalker",
        "height": "172",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "species": [],
        "vehicles": [
            "T-47 Airspeeder",
            "Imperial Speeder Bike"
        ],
        "starships": [
            "T-65 X-Wing",
            "Lambda-class T-4A Shuttle"
        ]
    },
    {
        "name": "C-3PO",
        "height": "167",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "R2-D2",
        "height": "96",
        "gender": "n/a",
        "homeworld": "Naboo",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Darth Vader",
        "height": "202",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [
            "TIE Advanced x1"
        ]
    },
    {
        "name": "Leia Organa",
        "height": "150",
        "gender": "female",
        "homeworld": "Alderaan",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "74-Z speeder bike"
        ],
        "starships": []
    },
    {
        "name": "Owen Lars",
        "height": "178",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Beru Whitesun lars",
        "height": "165",
        "gender": "female",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": []
    },
    {
        "name": "R5-D4",
        "height": "97",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Biggs Darklighter",
        "height": "183",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [
            "T-65 X-wing"
        ]
    },
    {
        "name": "Obi-Wan Kenobi",
        "height": "182",
        "gender": "male",
        "homeworld": "Stewjon",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "Tribubble Bongo"
        ],
        "starships": [
            "Delta-7 Aethersprite-class interceptor",
            "Providence-class Carrier/destroyer",
            "J-type Naboo Star Skiff",
            "Eta-2 Actis-class Light Interceptor",
            "Belbullab-22 Starfighter"
        ]
    },
    {
        "name": "Han Solo",
        "height": "180",
        "gender": "male",
        "homeworld": "Corellia",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Chewbacca",
        "height": "228",
        "gender": "male",
        "homeworld": "Kashyyyk",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "All Terrain Scout Transport"
        ],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Lando Calrissian",
        "height": "177",
        "gender": "male",
        "homeworld": "Socorro",
        "films": [
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon"
        ],
    }
]


# Challenge #1 

# Get a unique list of the homeworlds

# ["Tatooine", "Naboo", "Alderaan" ... ]
homeworlds_list = []
characters.each do |character|
    if !homeworlds_list.include?(character[:"homeworld"])
        homeworlds_list << character[:"homeworld"]
    end
    # require 'pry'; binding.pry
    homeworlds_list
end
p homeworlds_list


# Challenge #2

# Get a list of the characters who have starships

# ["Luke Skywalker", "Darth Vader", "Biggs Darklighter" ... ]

char_w_starships = []
characters.each do |character|
    if character[:"starships"] != []
        char_w_starships <<  character[:"name"]
    end
    char_w_starships
end
p char_w_starships

# CHALLENGE #3

# Create a new hash such that each character points to their collection of starships: 

# {
#     "Luke Skywalker" => ["T-65 X-Wing", "Lambda-class T-4A Shuttle"],
#     "C-3PO" => [],
#     "R2-D2" => [],
#     "Darth Vader" => ["TIE Advanced x1"]
#     ...
#     ...
#     ...
# }

starships_per_character = Hash.new([])
characters.each do |character|
    starships_per_character[character[:"name"]] = character[:"starships"]
    starships_per_character
end
p starships_per_character

# Challenge #4 

# Create a new hash such that each movie points to a collection of characters 

# {
#     "A New Hope" => ["Luke Skywalker", "C-3PO", ... ],
#     "The Empire Strikes Back" => ["Luke Skywalker", "C-3PO" ... ], 
#      ...
#      ...
#      ...
# }
char_per_movie = {}
movies =[]
chars_names = []

characters.each do |character|
    chars_names << character[:"name"]

    character[:"films"].each do |film|
        if !movies.include?(film)
            movies <<  film
        end
    movies
    end

    movies.each do |movie|
        if character[:"films"].include?(movie)
            chars_names << character[:"name"]
            char_per_movie[movie] = chars_names.uniq
        end
    end
    char_per_movie
end
p char_per_movie