require "rspec"
require "./lib/pet1"
require "./lib/customer_1"
require "./lib/day_care1"
require "./lib/veterinary"

RSpec.describe Veterinary do
    describe "#Initialize" do
        it "exists and its attributes can be read" do
            mary = Veterinary.new("Mary")

            expect(mary).to be_a(Veterinary)
            expect(mary.name).to eq("Mary")
        end
        
        it "starts with no clients" do
            mary = Veterinary.new("Mary")

            expect(mary.customers).to eq([])
        end
    end
    describe "Integrating with Customers" do
        before(:each) do
          @mary = Veterinary.new("Mary")
          @joel = Customer.new({name:"Joel", id:2})
          @billy = Customer.new({name:"Billy", id:3})
          @samson = Pet.new({name: "Samson", type: :dog})
          @lucy = Pet.new({name: "Lucy", type: :cat})
          @molly = Pet.new({name: "Molly", type: :cat})
        end
        it "can add customers" do
          @mary.add_customer(@joel)
          @mary.add_customer(@billy)
          expect(@mary.customers).to eq([@joel, @billy])
        end
    
        it "can count the number of pets of a certain type" do
          @joel.adopt(@samson)
          @joel.adopt(@lucy)
          @billy.adopt(@molly)
          @mary.add_customer(@joel)
          @mary.add_customer(@billy)
          expect(@mary.number_of_pets(:cat)).to eq(2)
          expect(@mary.number_of_pets(:dog)).to eq(1)
        end
    end    
end