require_relative "../lib/TodoEntry.rb"

RSpec.describe TodoEntry do
  it "constructs" do
    todo_entry = TodoEntry.new("clean car")
    expect(todo_entry.task).to eq "clean car"
  end

  it "marks to do as done!" do
    todo_entry = TodoEntry.new("clean car")
    expect(todo_entry.mark_done!).to eq "clean car - done!"
  end

  it "returns true if done" do
    todo_entry = TodoEntry.new("clean car")
    todo_entry.mark_done!
    expect(todo_entry.done?).to eq true
  end

  it "returns true if done, false if incomplete" do
    todo_entry = TodoEntry.new("clean car")
    expect(todo_entry.done?).to eq false
  end
end