require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
    before do
        @curator = Curator.new
        @artist_1 = Artist.new({
                    id: "1",      
                    name: "Henri Cartier-Bresson",      
                    born: "1908",      
                    died: "2004",      
                    country: "France"      
                })        
        @artist_2 = Artist.new({
                    id: "2",      
                    name: "Ansel Adams",      
                    born: "1902",      
                    died: "1984",      
                    country: "United States"      
                })        
        
        @photo_1 = Photograph.new({
                    id: "1",      
                    name: "Rue Mouffetard, Paris (Boy with Bottles)",      
                    artist_id: "1",      
                    year: "1954"      
                })   
        
        @photo_2 = Photograph.new({
                    id: "2",      
                    name: "Moonrise, Hernandez",      
                    artist_id: "2",      
                    year: "1941"      
                })
        
        @photo_3 = Photograph.new({
                    id: "3",      
                    name: "Red",      
                    artist_id: "2",      
                    year: "1950"      
                })
    end
    describe "#initialize" do
        it "exists" do  

            expect(@curator).to be_a Curator
        end

        it "has photographs array as attribute and starts empty" do   

            expect(@curator.photographs).to eq([])
        end

        it "has artists array as attribute and starts empty" do
            
            expect(@curator.artists).to eq([])
        end
    end

    describe "#add_photograph" do
        it "can add photographs and return updated photographs array" do
            @curator.add_photograph(@photo_1)
            @curator.add_photograph(@photo_2)
                    
            expect(@curator.photographs).to eq([@photo_1, @photo_2])
        end
    end

    describe "#add_artist" do
        it "can add artists and return updated artists array" do
            @curator.add_artist(@artist_1)
            @curator.add_artist(@artist_2)

            expect(@curator.artists).to eq([@artist_1, @artist_2])
        end
    end

    describe "#find_artists_by_id(id)" do
        it "can return an artist knowing its id" do
            @curator.add_artist(@artist_1)
            @curator.add_artist(@artist_2)

            expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
        end
    end

    describe "#find_lists" do
        it "can return a list of all artists and their photographs." do                    
            @curator.add_artist(@artist_1)
            @curator.add_artist(@artist_2)
            @curator.add_photograph(@photo_1)
            @curator.add_photograph(@photo_2)

            expect(@curator.artists_and_photographs).to eq(
                {@artist_1 => [@photo_1], @artist_2 => [@photo_2] })
        end

        it "can return a list of names of artists who have more than one photograph" do
            @curator.add_artist(@artist_1)
            @curator.add_artist(@artist_2)
            @curator.add_photograph(@photo_1)
            @curator.add_photograph(@photo_2)
            @curator.add_photograph(@photo_3)

            expect(@curator.artists_with_more_than_two_photographs).to eq(@artist_2.name)
        end
        
        it "can return a list of Photographs that were taken by a photographer from that country." do
            @curator.add_artist(@artist_1)
            @curator.add_artist(@artist_2)
            @curator.add_photograph(@photo_1)
            @curator.add_photograph(@photo_2)
            @curator.add_photograph(@photo_3)

            expect(@curator.photograps_from_country("France")).to eq(@photo_1.name)
        end
    end
end