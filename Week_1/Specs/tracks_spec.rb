require_relative "../lib/tracks.rb"

RSpec.describe Track_List
  context "given no tracks" do
  it "shows no tracks" do
    tracks = Track_List.new
    expect(tracks.list).to eq []  
  end
end
  
  context "given 1 track to add" do
  it "shows 1 track in list" do
    tracks = Track_List.new
    tracks.add("Spencer The Rover - John Martyn")
    expect(tracks.list).to eq ["Spencer The Rover - John Martyn"]  
  end
end

  context "given 2 tracks to add" do
  it "shows 2 track in list" do
    tracks = Track_List.new
    tracks.add("Marvin Gaye - A Change Gonna Come")
    tracks.add("Bob Dylan - The Times They Are A-Changin'")
    expect(tracks.list).to eq ["Marvin Gaye - A Change Gonna Come", "Bob Dylan - The Times They Are A-Changin'"]  
  end
end

  context "given a track that is already in the list" do
  it "fails" do
    tracks = Track_List.new
    tracks.add("Marvin Gaye - A Change Gonna Come")
    expect { tracks.add("Marvin Gaye - A Change Gonna Come")
    }.to raise_error "Duplicate track"
  end 
end

