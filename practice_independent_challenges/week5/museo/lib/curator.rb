class Curator
  attr_reader :photographs,
              :artists
  
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def artists_and_photographs
    hash = Hash.new([])
    
    @artists.each do |artist|
      hash[artist] = []
    end
 
    @photographs.each do |photograph|
      @artists.each do |artist|
        if photograph.artist_id == artist.id
          hash[artist] << photograph 
        end
      end
      hash
    end
    hash
  end

  def artists_with_more_than_two_photographs
    name = "a"
    @artists.each do |artist|
      if artists_and_photographs[artist].size >= 2
        name = artist.name
      end
    end
    name
  end

  def photograps_from_country(country)
    photo = []
    @artists.each do |artist|
      if artist.country == country
        @photographs.each do |photograph|
          photo << photograph.name if photograph.artist_id == artist.id
        end
      end
    end
    photo.join(",")
  end
end