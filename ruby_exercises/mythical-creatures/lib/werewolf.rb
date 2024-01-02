class Werewolf
    attr_reader :name, 
                :location, 
                :human, 
                :hungry

    def initialize(name, location = "London")
        @name = name
        @location = location
        @human = true
        @hungry = false
    end

    def human?
        @human
    end

    def change!
        @human = !@human
        @hungry = !@hungry
    end

    def wolf?
        !@human
    end

    def hungry?
        @hungry
    end

    def eat(victim)
        if ((@human == false) && (victim.status == :alive))
            @hungry = false
            victim.status = :dead
            "Werewolf #{@name} ate the victim"
        else
            "Werewolf #{@name} cannot consume a victim if it is in human form"
        end
    end
end