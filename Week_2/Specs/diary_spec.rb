require_relative "../lib/diary.rb"

RSpec.describe Diary do
  context "when multiple entries are given" do
    it "searches through the list and returns #longest_possible_passage" do
      diary_entry = DiaryEntry.new("Coding with whisky is awesome")
      diary_entry2 = DiaryEntry.new("I want cookie")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      diary.add_new_entry(diary_entry2.mark_as_entry)
      expect(diary.longest_possible_entry(3,1)).to eq "I want cookie"
    end

    it "searches through the list and returns #longest_possible_passage" do
      diary_entry = DiaryEntry.new("Coding with whisky is awesome")
      diary_entry2 = DiaryEntry.new("I want cookie")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      diary.add_new_entry(diary_entry2.mark_as_entry)
      expect(diary.longest_possible_entry(3,2)).to eq "Coding with whisky is awesome"
    end
  end
end

 