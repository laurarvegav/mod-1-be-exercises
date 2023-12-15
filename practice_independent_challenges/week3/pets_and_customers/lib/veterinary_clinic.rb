class VeterinaryClinic
    attr_reader :name, :vets

    def initialize(name)
        @name = name
        @vets = []
    end

    def add_vet(vet)
        @vets << vet
    end

    def number_of_pets(pet_key)
        number = 0
        @vets.each do |vet|
            number += vet.number_of_pets(pet_key)
        end
        number
    end
end