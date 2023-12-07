class Customer
    attr_reader :name,
                :id,
                :pets,
                :outstanding_balance

    def initialize(attributes)
        @name = attributes[:name]
        @id = attributes[:id]
        @pets = attributes[:pets] = []
        @outstanding_balance = 0
    end

    def adopt(pet)
        @pets << pet
    end

    def charge(amount)
        @outstanding_balance += amount
    end
            
end