# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings



# 2. Return an unnested array of animals with length >= 4



# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }


pet_inventory = {kat: ["cat","cat","cat"], bob: ["fish", "snake", "gerbil"], gerri: ["dog","dog"], jamison: ["bird", "dog"]}
all_pet_types =[]
pet_inventory.each do |owner,pet_types|
    pet_types.each do |pet_type|
        if !all_pet_types.include?(pet_type)
            all_pet_types << pet_type
        end
    end
end

p all_pet_types