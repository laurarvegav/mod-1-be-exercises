class Ogre

    attr_reader :name, 
                :home, 
                :encounter_counter,
                :swings

    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @encounter_counter = 0
        @swings = 0
    end

    def will_swing_at(human)
        if @encounter_counter % 3 == 0
            swing_at(human)
        end
    end

    def encounter(human)
        @encounter_counter += 1
        human.increase_encounters
        if human.notices_ogre?
            swing_at(human)
        end
    end

    def swing_at(human)
        @swings += 1
        human.knock_unconscious if @swings % 2 == 0
    end

    def apologize(human)
        human.revive
        @swings = 0
    end

end