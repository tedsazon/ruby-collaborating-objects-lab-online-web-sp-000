class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if @artist ==nil
      nil
    else
      @artist.name
    end
  end

  def self.new_by_filename(name)
    artist, song = name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end


end
