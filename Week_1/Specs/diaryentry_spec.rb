require_relative "../lib/classDiaryEntry.rb"

RSpec.describe DiaryEntry do
  it "constructs" do
  diary_entry = DiaryEntry.new("my_title", "my_contents")
  expect(diary_entry.title).to eq "my_title"
  expect(diary_entry.contents).to eq "my_contents"
  
  end

   describe "#count_words" do
     it "Returns zero if the diary entries is empty" do
     diary_entry = DiaryEntry.new("my title", "")
     expect(diary_entry.count_words).to eq 0
    end
  
    it "Returns 1 if the diary entries is one" do
      diary_entry = DiaryEntry.new("my title", "one")
      expect(diary_entry.count_words).to eq 1
     end

      it "Returns the number of words in all diary entries" do
      diary_entry = DiaryEntry.new("my title", "one two three four")
      expect(diary_entry.count_words).to eq 4
     end


     describe "#reading_time" do
      it "fail when rpm is zero" do
      diary_entry = DiaryEntry.new("my title", "Hello world")
      expect { diary_entry.reading_time(0)}.to raise_error("WPM must be > 0")
      end

      it "Returns zero if the diary entries is empty" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.reading_time(2)).to eq 0
     end
   
     it "Returns 1 if the diary entries is one" do
       diary_entry = DiaryEntry.new("my title", "one")
       expect(diary_entry.reading_time(2)).to eq 1
      end
 
       it "Returns reading time for the contents" do
       diary_entry = DiaryEntry.new("my title", "one two three four five")
       expect(diary_entry.reading_time(2)).to eq 3
      end
      
    describe "#reading_chunk" do
      it "returns the maximum chunk of text that the user can read" do
        diary_entry = DiaryEntry.new("my title", "one two three four five")
    
    end
  end
end
end
end