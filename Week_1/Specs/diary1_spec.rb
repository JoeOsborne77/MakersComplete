require_relative "../lib/classDiary.rb"

RSpec.describe Diary do
  context "initially" do
  it "has an empty list of entries" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

    it "has an empty list of entries" do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end

    it "has a reading time of 0" do
      diary = Diary.new
      expect(diary.reading_time(2)).to eq 0
    end

    it "has 0 entries" do
      diary = Diary.new
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
    end
  end
end




    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.