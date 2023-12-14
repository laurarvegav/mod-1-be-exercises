class Veterinary
    attr_reader :name, :customers

    def initialize(name)
        @name = name
        @customers = []
    end

    def add_customer(client)
        @customers << client
    end

    def number_of_pets(pet_key)
        vet_clients_pets = Hash.new(0)
        @customers.each do |client|
            client.pets.each do |pet|
                vet_clients_pets[pet.type] += 1
            end
            vet_clients_pets
        end
        vet_clients_pets[pet_key]
    end
end