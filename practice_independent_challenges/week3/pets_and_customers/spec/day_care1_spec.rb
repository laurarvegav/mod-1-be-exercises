require "rspec"
require "./lib/pet1.rb"
require "./lib/customer_1.rb"
require "./lib/day_care1.rb"

RSpec.describe DayCare do
    it "exists, has a name and starts the day with no customers" do
        north = DayCare.new ("North")

        expect(north).to be_an_instance_of (DayCare)
        expect(north.name).to eq ("North")
        expect(north.customers).to eq([])
    end

    it "can have multiple customers and those customers can have multiple pets" do
        north = DayCare.new ("North")
        samson = Pet.new({name: "Samson", type: :dog, age: 3})
        lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
        scout = Pet.new({name: "Scout", type: :bunny, age: 0.5})
        woody = Pet.new({name: "Woody", type: :dog, age: 3})
        ivy = Pet.new({name: "Ivy", type: :dog, age: 2})
        joel = Customer.new(name:"Joel", id:2, pets: [samson,lucy])
        marg = Customer.new(name:"Margs", id: 3, pets: [scout])
        ale = Customer.new(name:"Ale", id: 4, pets:[woody, ivy])
        
        north.new_customer(joel)
        north.new_customer(marg)
        north.new_customer(ale)

        expect(north.customers).to eq ([joel,marg,ale])


    end
end