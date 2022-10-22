class Track_List

  def initialize
    @tracks = []
  end

  def add(tracks)
    fail "Duplicate track" unless !@tracks.include? tracks 
    @tracks << tracks
    end

  def list
    @tracks
  end
end