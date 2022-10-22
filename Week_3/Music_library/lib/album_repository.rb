require_relative "album.rb"
require_relative "database_connection.rb"

class AlbumRepository
  def all
    sql = 'SELECT id, title FROM albums;'
    result_set = DatabaseConnection.exec_params(sql,[])
    return result_set
     albums = []
    
     result_set.each do |record| 
       album = Album.new
       album.id = record['id']
       album.title = record ['title']

       albums << album
  end
  p albums
end

  def find(id) 
    sql = 'SELECT title, release_year FROM albums WHERE id = $1;'
    params = [id]
    result = DatabaseConnection.exec_params(sql, params)
    record = result[0]

    album = Album.new
    album.title = record ['title']
    album.release_year = record ['release_year']
    album.artist_id = record ['artist_id']  

    return album
  end

  def create(album)
    sql = 'INSERT INTO albums (title, release_year, artist_id) VALUES ($1, $2, $3);'
    sql_params = [album.title, album.release_year, album.artist_id]
      result = DatabaseConnection.exec_params(sql, sql_params)
      return nil
  end 
end