require_relative "artist.rb"

class ArtistRepository
  def all
    sql = 'SELECT id, name, genre FROM artists;'
    result_set = DatabaseConnection.exec_params(sql,[])
    
    @artists = []
    
    result_set.each do |record| 
      artist = Artist.new
      artist.id = record['id']
      artist.name = record ['name']
      artist.genre = record ['genre']

      @artists << artist
  end
  return @artists
end

  # def find(id)
  #   SELECT id, name, cohort_name FROM artists WHERE id = id
  # end

  # def create(artist, genre)
  #   INSERT INTO artists (name, genre) VALUES (artist, genre);
  # end

  # def update(current_artist, updated_name)
  #   UPDATE artists SET name = artist;
  # end

  # def delete(artist)
  #   DELETE FROM artists WHERE name = artist
  # end
end
