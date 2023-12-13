#A `Card` has a suit (diamonds, hearts, clubs, spades) and a `value` (A-K-Q-J, 10-2), 
#as well as a way to read those data points.

class Card
    attr_reader :suite,
                :value

    def initialize(suite , value)
        @suite = suite
        @value = value
    end
end
