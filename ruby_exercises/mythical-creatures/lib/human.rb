class Human
    attr_reader :name,
                :encounter_counter,
                :knocked_out

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @knocked_out = false
    end

    def increase_encounters
        @encounter_counter += 1
    end

    def notices_ogre?
        @encounter_counter % 3 == 0
    end
      
    def knock_unconscious
        @knocked_out = true
    end
    
    def knocked_out?
        @knocked_out
    end
end