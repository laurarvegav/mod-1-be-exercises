# A `Deck` has at least 5 `Card`s, and can pull a `random_card` out of itself.
class Deck

    def initialize(cards)
        cards.map do |card|
            (card.value + card.suite)
       end
    end

    def random_card
        @deck.sample
    end
end