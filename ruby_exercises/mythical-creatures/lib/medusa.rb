class Medusa
    attr_reader :name,
                :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        if @statues.size < 3
            @statues << victim
            victim.stone
        else
            @statues.shift.unstone
            @statues << victim
            victim.stone
        end
    end
end