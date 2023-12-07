require "rspec"
require "./lib/pet1.rb"

RSpec.describe Pet do

    it "exists, has a name, type and age" do
        samson = Pet.new({name: "Samson", type: :dog, age: 3})
    
        expect(samson).to be_an_instance_of(Pet)
        expect(samson.name).to eq ("Samson")
        expect(samson.type).to eq (:dog)
        expect(samson.age).to eq (3)        
    end

    it "comes not being fed" do
        samson = Pet.new({name: "Samson", type: :dog, age: 3})
    
        expect(samson.fed?).to eq (false)
    end
end