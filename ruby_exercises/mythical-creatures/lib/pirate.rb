class Pirate
    attr_reader :name,
                :job,
                :cursed_count,
                :booty

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @cursed_count = 0
        @booty = 0
    end

    def cursed?
        @cursed_count >= 3
    end

    def commit_heinous_act
        @cursed_count += 1
    end

    def rob
        @booty += 100
    end
end