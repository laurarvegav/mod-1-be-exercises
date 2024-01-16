class Activity

    attr_reader :name,
                :participants,
                :total_cost
    
    def initialize(name)
        @name = name
        @participants = {}
        @total_cost = 0
    end

    def add_participant(name, payment)
        @participants[name] = payment
        @total_cost += payment

        @participants
    end

    def split
        (@total_cost / (@participants.count))
    end

    def owed
        owed = Hash.new(0)
        @participants.each do |name,payment|
            owed[name] += split - payment
        end
        owed
    end
end