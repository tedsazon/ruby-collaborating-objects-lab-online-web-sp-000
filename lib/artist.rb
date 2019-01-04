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
    self.new(name)
    artist.save
  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ?
    self.find_by_name(name) : self.create_by_name(name)
  end

end
