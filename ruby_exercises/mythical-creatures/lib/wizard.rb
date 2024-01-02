class Wizard
    attr_reader :name, 
                :bearded, 
                :rested,
                :casting

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @casting = 0
    end

    def bearded?
        @bearded
    end

    def incantation(power)
        "sudo #{power}"
    end

    def rested?
        rested
    end

    def cast
        @casting += 1
        if (@casting >= 3)
            @rested = false
        end
        "MAGIC MISSILE!"
    end
end