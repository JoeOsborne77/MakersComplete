require_relative '../lib/album_repository.rb'
require_relative '../lib/view_albums.rb'
require_relative '../lib/album.rb'
require_relative '../app.rb'

RSpec.describe Application do

  def reset_artist_table
    seed_sql = File.read('spec/music_database.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_artist_table
  end

  it 'displays albums to console' do 
    @io = double :io
    @album_repository = double :album_repository
    @artist_repository = double :artist_repository
    expect(@io).to receive(:puts).with("Welcome to the music library manager!")
    expect(@io).to receive(:puts).with("What would you like to do? 1 - List all albums or 2 - List all artists")
    expect(@io).to receive(:gets).and_return(1)
    app = Application.new('music_library_test', @io, @album_repository, @artist_repository)
    app.run
  end

  it 'displays artists to console' do 
    @io = double :io
    @album_repository = double :album_repository
    @artist_repository = double :artist_repository
    expect(@io).to receive(:puts).with("Welcome to the music library manager!")
    expect(@io).to receive(:puts).with("What would you like to do? 1 - List all albums or 2 - List all artists")
    expect(@io).to receive(:gets).and_return(2)
    app = Application.new('music_library_test', @io, @album_repository, @artist_repository)
    app.run
  end
end