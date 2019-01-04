class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    artist = self.new
    artist.name = name
    artist.save
    artist
  end

  def self.find_by_name(name)
    result = nil
    @@all.each do |artist|
      result = artist if artist.name == name
    end
    result
  end

  def self.find_or_create_by_name(name)
    Artist.find_by_name(name) else
    Artist.create_by_name(name)
  end

end
