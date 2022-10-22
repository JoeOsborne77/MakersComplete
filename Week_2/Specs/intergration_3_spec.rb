require_relative "../lib/diary_entry.rb"
require_relative "../lib/diary.rb"

RSpec.describe "Intergration" do
  context "when entry is marked as todo" do
    it "pushes entry to todo list and #read_todos method returns said list" do
      diary_entry = DiaryEntry.new("clean car")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_todo)
      expect(diary.read_todos).to eq ["clean car"]
    end
  end

  context "when multiple entries are marked as todo" do
    it "pushes entry to todo list and #read_todos method returns said list" do
      diary_entry = DiaryEntry.new("clean car")
      diary_entry2 = DiaryEntry.new("walk dog")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_todo)
      diary.add_new_entry(diary_entry2.mark_as_todo)
      expect(diary.read_todos).to eq ["clean car", "walk dog"]
    end
  end
 
  context "when entry is marked as entry" do
    it "pushes entry to entry list and #read_entries method returns said list" do
      diary_entry = DiaryEntry.new("Coding with whisky is awesome")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      expect(diary.read_entries).to eq ["Coding with whisky is awesome"]
    end
  end

  context "when multiple entries are marked as entry" do
    it "pushes entry to entry list and #read_entries method returns said list" do
      diary_entry = DiaryEntry.new("Coding with whisky is awesome")
      diary_entry2 = DiaryEntry.new("I want cookie")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_entry)
      diary.add_new_entry(diary_entry2.mark_as_entry)
      expect(diary.read_entries).to eq ["Coding with whisky is awesome", "I want cookie"]
    end
  end

  context "when entry is marked as contact" do
    it "pushes entry to contact list and #see_contacts method returns said list" do
      diary_entry = DiaryEntry.new("Joe - 07386535481")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_contact)
      expect(diary.see_contact_directory).to eq ["Joe - 07386535481"]
    end
  end

  context "when multiple entries are marked as contact" do
    it "pushes entry to contact list and #see_contacts method returns said list" do
      diary_entry = DiaryEntry.new("Joe - 07386535481")
      diary_entry2 = DiaryEntry.new("Peter - 07477535481")
      diary = Diary.new
      diary.add_new_entry(diary_entry.mark_as_contact)
      diary.add_new_entry(diary_entry2.mark_as_contact)
      expect(diary.see_contact_directory).to eq ["Joe - 07386535481", "Peter - 07477535481"]
    end
  end
end