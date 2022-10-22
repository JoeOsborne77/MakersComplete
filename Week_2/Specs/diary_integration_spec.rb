
# Integration tests
# Unit tests, exercising all of the class's functionality, 
# without using or referring to the other class.

require_relative "../lib/diary.rb"
require_relative "../lib/secret_diary.rb"

RSpec.describe "Integration" do
  context "initially" do
    it "fails" do
      diary_entry = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary_entry)
      expect{secret_diary.read_diary}.to raise_error "Go away!"
    end
  end

  context "we unlock the diary" do
    it "returns the entries" do
      diary_entry = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary_entry)
      secret_diary.unlock
      expect(secret_diary.read_diary).to eq diary_entry
    end
  end

  context "we relock the diary" do
    it "fails" do
      diary_entry = Diary.new("Dear diary")
      secret_diary = SecretDiary.new(diary_entry)
      secret_diary.unlock
      secret_diary.lock
      expect{secret_diary.read_diary}.to raise_error "Go away!"
    end
  end
end