require_relative "../lib/track.rb"
require_relative "../lib/music_library.rb"

RSpec.describe "Intergration" do
  describe "#all" do
    context "given multiple tracks" do
      it "returns list of all tracks" do
        music_library = MusicLibrary.new
        track = Track.new("my title", "my artist")
        track2 = Track.new("my title2", "my artist2")
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
        track = Track.new("my title", "my artist")
        track2 = Track.new("my title2", "my artist2")
        music_library.add(track)
        music_library.add(track2)
        expect(music_library.search("artist2")).to eq [track2]
      end
    end

    context "more than one track matches the search" do
      it "returns a list of tracks that match the keyword" do
        music_library = MusicLibrary.new
        track = Track.new("my title", "my artist")
        track2 = Track.new("my title2", "my artist2")
        music_library.add(track)
        music_library.add(track2)
        expect(music_library.search("artist")).to eq [track, track2]
      end
    end
  end
end