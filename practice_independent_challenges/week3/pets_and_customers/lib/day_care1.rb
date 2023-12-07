class DayCare
    attr_reader :name,
                :customers

    def initialize(name)
        @name = name
        @customers = []
    end

    def new_customer(client)
        @customers << client 
    end

end