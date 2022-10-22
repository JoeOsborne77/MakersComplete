require_relative "../lib/music_library.rb"

RSpec.describe MusicLibrary do
  describe "#all" do
    context "given multiple tracks" do
      it "returns list of all tracks" do
        music_library = MusicLibrary.new
        track = double :Track 
        track2 = double :Track
        music_library.add(track)
        music_library.add(track2)
        expect(music_library.all).to eq [track, track2]
      end
    end
  end

  describe "#search" do
    context "only one track matches the search" do
      it "returns a list of tracks that match the keyword" do
        music_library = MusicLibrary.new
        track = double :Track, matches?: false
        track2 = double :Track, matches?: true 
        music_library.add(track)
        music_library.add(track2)
        expect(music_library.search("artist2")).to eq [track2]
      end
    end

    context "multiple tracks match the search" do
      it "returns a list of tracks that match the keyword" do
        music_library = MusicLibrary.new
        track = double :Track, matches?: true
        track2 = double :Track, matches?: true 
        music_library.add(track)
        music_library.add(track2)
        expect(music_library.search("artist2")).to eq [track, track2]
      end
    end
  end
end

