require "rspec"
require "./lib/pet1"
require "./lib/customer_1"
require "./lib/day_care1"
require "./lib/veterinary"
require "./lib/veterinary_clinic"

RSpec.describe VeterinaryClinic do
describe  "#Exists" do
        it "exists and its attributes can be read" do
            north = VeterinaryClinic.new("North Branch")

            expect(north).to be_a(VeterinaryClinic)
            expect(north.name).to eq("North Branch")
        end
        
        it "starts with no vets" do
            north = VeterinaryClinic.new("North Branch")

            expect(north.vets).to eq([])
        end
    end
    describe "Integrating with Vets" do
        before(:each) do
          @north = VeterinaryClinic.new("North Branch")
          @downtn = VeterinaryClinic.new("Downtown Branch")
          @mary = Veterinary.new("Mary")
          @rob = Veterinary.new("Rob")
          @joel = Customer.new({name:"Joel", id:2})
          @billy = Customer.new({name:"Billy", id:3})
          @scout = Pet.new({name: "Scout", type: :bunny, age: 0.5})
          @woody = Pet.new({name: "Woody", type: :dog, age: 3})
          @ivy = Pet.new({name: "Ivy", type: :dog, age: 2})
          @lucy = Pet.new({name: "Lucy", type: :cat})          
          @molly = Pet.new({name: "Molly", type: :cat})
          @marg = Customer.new(name:"Margs", id: 3, pets:[@scout])
          @ale = Customer.new(name:"Ale", id: 4, pets:[@woody, @ivy])
          @joel.adopt(@samson)
          @joel.adopt(@lucy)
          @billy.adopt(@molly)
          @mary.add_customer(@joel)
          @mary.add_customer(@billy)
          @rob.add_customer(@marg)
          @rob.add_customer(@ale)
        end

        it "can add vets" do
          @north.add_vet(@mary)
          @downtn.add_vet(@rob)

          expect(@north.vets).to eq([@mary])
          expect(@downtn.vets).to eq([@rob])
        end
    
        it "can count the number of pets of a certain type" do
          @north.add_vet(@mary)
          @downtn.add_vet(@rob)
          
          expect(@north.number_of_pets(:cat)).to eq(2)
          expect(@downtn.number_of_pets(:bunny)).to eq(1)
        end
    end    
end

