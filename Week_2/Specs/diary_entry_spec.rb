require_relative "../lib/diary_entry.rb"

RSpec.describe DiaryEntry do
  context "given an entry" do
    it "allows user to #mark_as_todo" do
      diary_entry = DiaryEntry.new("clean car")
      expect(diary_entry.mark_as_todo).to eq "clean car#todo"
    end

    it "allows user to #mark_as_entry" do
      diary_entry = DiaryEntry.new("I went swimming today and it was blissful")
      expect(diary_entry.mark_as_entry).to eq "I went swimming today and it was blissful#entry"
    end

    it "allows user to #mark_as_contact" do
      diary_entry = DiaryEntry.new("Joe - 07497836638")
      expect(diary_entry.mark_as_contact).to eq "Joe - 07497836638#contact"
    end
  end
end