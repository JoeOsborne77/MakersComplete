require_relative 'lib/database_connection'
require_relative 'lib/view_artists'
require_relative 'lib/view_albums'
require_relative 'lib/album_repository'
require_relative 'lib/artist_repository'


class Application
  def initialize(database_name, io, album_repository, artist_repository)
    DatabaseConnection.connect(database_name)
    @io = io
    @album_repository = album_repository
    @artist_repository = artist_repository
  end

  def run
    view_albums = ViewAlbums.new
    view_artists = ViewArtists.new
      @io.puts 'Welcome to the music library manager!'
      @io.puts 'What would you like to do? 1 - List all albums or 2 - List all artists'
      input = @io.gets.to_i
        if input == 1 
          puts "Here is the list of albums:"
          view_albums.all
        elsif input == 2 
          puts "Here is the list of artists:"
          view_artists.all
        end
  end
end

if __FILE__ == $0
  app = Application.new(
    'music_library',
    Kernel,
    AlbumRepository.new,
    ArtistRepository.new
  )
  app.run
end