class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist ==nil
      nil
    else
      @artist.name
    end
  end

  def self.new_by_filename(name)
    song = name.split(" - ")[1]
    song
  end


end
