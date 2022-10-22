#Test-drive these classes. Include:

# Integration tests
# Unit tests, exercising all of the class's functionality, without 
# using or referring to the other class.

require_relative "../lib/track.rb"

RSpec.describe Track do
  context "keyword matches the track" do
    it "returns true" do
      track = Track.new("my title", "my artist")
      expect(track.matches?("title")).to eq true
    end
  end

  context "keyword does not match the track" do
    it "returns false" do
      track = Track.new("my title", "my artist")
      expect(track.matches?("ihfjhf")).to eq false
    end
  end
end