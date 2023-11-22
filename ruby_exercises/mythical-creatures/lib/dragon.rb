class Dragon
    attr_reader :name , :color, :rider, :hungry

    def initialize (name,color,rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = 0
    end

    def hungry?
       @hungry <= 2
    end

    def eat
        @hungry += 1
    end
end