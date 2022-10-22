require_relative "album.rb"

class ViewAlbums
  def all
    sql = 'SELECT id, title, release_year, artist_id FROM albums;'
    result_set = DatabaseConnection.exec_params(sql,[])
    albums = []
    
     result_set.each do |record| 
       album = Album.new
       album.id = record['id']
       album.title = record ['title']
       albums << album
  end
  return albums.each { |album| puts "| * #{album.id} - #{album.title}"}

  end
end
