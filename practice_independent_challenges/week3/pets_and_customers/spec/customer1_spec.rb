require "rspec"
require "./lib/pet1"
require "./lib/customer_1"

RSpec.describe Customer do

    it "exists, has a name and Id and is instanciated with no pets" do
        joel = Customer.new({name: "Joel", id: 2})
        
        expect(joel).to be_an_instance_of (Customer)
        expect(joel.name).to eq("Joel")
        expect(joel.id).to eq(2)
        expect(joel.pets).to eq([])
    end

    it "allows a client to adopt and returns pets" do
        joel = Customer.new({name: "Joel", id: 2})
        samson = Pet.new({name: "Samson", type: :dog, age: 3})
        lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

        joel.adopt(samson)
        joel.adopt(lucy)

        expect(joel.pets).to eq([samson , lucy])
    end

    it "returns accurate outstanding balance after creating and/or charging" do
        joel = Customer.new({name: "Joel", id: 2})
        
        expect(joel.outstanding_balance).to eq(0)
        joel.charge(15)
        joel.charge(7)
        
        expect(joel.outstanding_balance).to eq(22)
    end
end