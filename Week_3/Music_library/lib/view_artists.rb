require_relative "artist.rb"

class ViewArtists
  def all
    sql = 'SELECT id, name, genre FROM artists;'
    result_set = DatabaseConnection.exec_params(sql,[])
    
    artists = []
    
    result_set.each do |record| 
      artist = Artist.new
      artist.id = record['id']
      artist.name = record ['name']
      artist.genre = record ['genre']

      artists << artist
  end
  return artists.each { |artist| puts "| * #{artist.id} - #{artist.name}" }
end
end