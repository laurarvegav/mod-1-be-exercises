class Unicorn
    attr_reader :name, :color, :response

def initialize (name, color ='silver')
    @name = name
    @color = color
end

def silver?
    @color == 'silver'
end

def say(response)
    spark = '**;*'
    spark+" "+response+" "+spark
end
end