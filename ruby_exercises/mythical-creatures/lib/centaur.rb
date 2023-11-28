class Centaur 
    attr_reader :name, 
                :breed

    def initialize(name,breed)
        @name = name
        @breed = breed
        @cranky = 0
        @run = 0
        @shoot = 0
        @stand = true
        @rested = true
    end

    def shoot
       @shoot +=1
       @cranky = @run + @shoot
       if ((@cranky < 3) && (@stand == true))
        "Twang!!!"
       else
        "NO!"
       end
    end

    def run
        if @stand == true
        @run +=1
        @cranky = @run + @shoot
        "Clop clop clop clop!"
        else
        "NO!"
       end
    end

    def cranky?
        @cranky = @run + @shoot
        if @cranky >= 3
            true
        else
            false
        end
    end

    def standing?
        @stand
    end

    def sleep
        if @stand == true
            "NO!"
        else
            "YES"
            @cranky = 0
            @run = 0
            @shoot = 0
        end
    end

    def lay_down
        @stand = false
        def laying?
        true
        end
    end

    def stand_up
    @stand = true
    end

    def drink_potion
        if @stand != true
            false 
        elsif @rested == true
            "SICK!"
        elsif @stand == true
            @cranky = 0
            @run = 0
            @shoot = 0
            "#{@name} is rested!"
        end

    end

    def rested?
        if @rested == true
            true
        else
            false
        end
    end
end