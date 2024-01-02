class Person
    attr_reader :name,
                :stoned

    def initialize(name)
        @name = name
        @encounter_counter = 0
        @stoned = false
    end

    def stoned?
        @stoned
    end

    def stone
        @stoned = true
    end

    def unstone
        @stoned = false
    end
end