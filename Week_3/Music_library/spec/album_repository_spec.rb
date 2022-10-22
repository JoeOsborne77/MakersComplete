require_relative '../lib/album_repository.rb'
require_relative '../lib/album.rb'

RSpec.describe AlbumRepository do

  def reset_artist_table
    seed_sql = File.read('spec/seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_artist_table
  end

  it 'finds one album' do 
    repo = AlbumRepository.new
    album = repo.find(3)
    expect(album.title).to eq('Tangled Up In Blue')
    expect(album.release_year).to eq('1975')
  end

  it "adds an album" do
    repo = AlbumRepository.new
    new_album = Album.new
    new_album.title = 'Nevermind'
    new_album.release_year = 1992
    new_album.artist_id = 4
    repo.create(new_album)
    all_albums = repo.all
    expect(all_albums[4]).to eq("id" => "5",
      "title" => "Nevermind",)
  end
end 