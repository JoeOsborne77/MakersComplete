require_relative "../lib/classDiary.rb"
require_relative "../lib/classDiaryEntry.rb"

RSpec.describe "Integration" do
  it "returns the list of entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("my title", "my contents")
    diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.all).to eq [diary_entry1, diary_entry2]
  end

  describe "word counting behaviour" do
    it "Returns the number of words in all diary entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents")
      diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 5
    end
  end
  
  describe "reading time behaviour" do
    #remember case of 0 wpm
    
    it "returns error when WPM is 0" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents 2")
      diary.add(diary_entry1)
      expect { diary.reading_time(0) }.to raise_error("WPM must be > 0")
    end

    it "calculates the reading time for entries where it fits exactly" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents 2")
      diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

    it "calculates the reading time for entries where it falls over 1 min" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents")
      diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end


  describe "best reading time entry behaviour" do
    it "fails where wpm is 0" do 
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents")
      diary.add(diary_entry1)
      expect { diary.find_best_entry_for_reading_time(0, 1) }.to raise_error("WPM must be > 0")
      end


    context "where we just have one entry and it is readable in the time" do
      it "returns that entry" do 
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry1
      end
    end
  end

  context "where we just have one entry and it is unreadable in the time" do
    it "returns nil" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents longer")
      diary.add(diary_entry1)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq nil
    end
  end

  context "where we have multiple entries" do
    it "returns longest possible entry user could read" do
      diary = Diary.new
      best_entry = DiaryEntry.new("my title", "one two")
      diary.add(DiaryEntry.new("my title", "one"))
      diary.add((best_entry))
      diary.add(DiaryEntry.new("my title", "one two three"))
      diary.add(DiaryEntry.new("my title", "one two three four"))
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq best_entry
    end
  end
end

