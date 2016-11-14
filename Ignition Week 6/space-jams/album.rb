class Album
  attr_reader :id, :title, :artists
  attr_accessor :tracks

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    @duration_min = 0
    @tracks.each do |track|
      @duration_min += (track[:duration_ms].to_f / 60000.0)
    end
    @duration_min
  end

  def summary
    @summary = "\nName: #{@title} \nArtist(s): #{@artists} \nDuration (min.): #{duration_min} \nTracks:"
    @tracks.each do |track|
      @summary += "\n- #{track[:title]}"
    end
    @summary
  end

end
