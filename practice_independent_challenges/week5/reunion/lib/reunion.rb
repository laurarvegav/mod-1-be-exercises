class Reunion
    attr_reader :name,
                :activities

    def initialize(name)
        @name = name
        @activities = []
    end

    def add_activity(activity)
        @activities << activity
    end

    def participants
        reunion_participants = Hash.new(0)
        @activities.each do |activity|
            activity.owed.each do |name , value|
                reunion_participants[name] += value
            end
            reunion_participants
        end
        reunion_participants
    end

    def owed_summary
        summary = []
        participants.each do |name, owed|
            if owed >= 0
                summary << "#{name} owes $#{owed} "
            else
                summary << "#{name} is owed $#{- owed} "
            end
        end
        p summary.join("/n")
    end
end