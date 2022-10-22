require_relative "../lib/diary_entry.rb"
require_relative "../lib/diary.rb"

RSpec.describe "Intergration" do
  context "when entry is marked as todo" do
    it "pushes entry to todo list and #read method returns said list" do
      diary_entry = DiaryEntry.new("clean car")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_todo)
      expect(diary.read_todos).to eq ["clean car"]
    end
  end

  context "when multiple entries are marked as todo" do
    it "pushes entries to todo list and #read method returns said list" do
      diary_entry = DiaryEntry.new("clean car")
      diary_entry2 = DiaryEntry.new("walk the dog")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_todo)
      diary.add_new_entry(diary_entry2.mark_as_todo)
      expect(diary.read_todos).to eq ["clean car", "walk the dog"]
    end
  end

  context "when entry is marked as entry" do
    it "pushes entry to entry list and #read method returns said list" do
      diary_entry = DiaryEntry.new("Today I went swimming and it was blissful")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      expect(diary.read_entries).to eq ["Today I went swimming and it was blissful"]
    end
  end

  context "when multiple entries are marked as entry" do
    it "pushes entries to entry list and #read method returns said list" do
      diary_entry = DiaryEntry.new("Today I went swimming and it was blissful")
      diary_entry2 = DiaryEntry.new("I got a little bit cold when I got out, but other than that, it was magical") #need to debug why '.' are throwing it off
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      diary.add_new_entry(diary_entry2.mark_as_entry)
      expect(diary.read_entries).to eq ["Today I went swimming and it was blissful", "I got a little bit cold when I got out, but other than that, it was magical"]
    end
  end

  context "when entry is marked as contact" do
    it "pushes entry to contact list and #see method returns said list" do
      diary_entry = DiaryEntry.new("Joe - 0735573629")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_contact)
      expect(diary.see_contact_directory).to eq ["Joe - 0735573629"]
    end
  end

  context "when multiple entries are marked as contact" do
    it "pushes entry to contact list and #see method returns said list" do
      diary_entry = DiaryEntry.new("Joe - 0735573629")
      diary_entry2 = DiaryEntry.new("Phil - 0729083629")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_contact)
      diary.add_new_entry(diary_entry2.mark_as_contact)
      expect(diary.see_contact_directory).to eq ["Joe - 0735573629", "Phil - 0729083629"]
    end
  end
end