require_relative "../lib/todoentry.rb"
require_relative "../lib/todo_list.rb"

RSpec.describe "integration" do
  context "given a todo" do
    it "adds the todo to todo list" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("clean car")
      todo_entry2 = TodoEntry.new("wash dog")
      todo_list.add(todo_entry)
      todo_list.add(todo_entry2)
      expect(todo_list.all).to eq [todo_entry, todo_entry2]
    end
  end

  context "given 1 todo" do
    it "returns that todo" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_list.add(todo_entry)
      expect(todo_list.all).to eq [todo_entry]
    end

    it "returns multiple todo" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_entry2 = TodoEntry.new("clean car")
      todo_list.add(todo_entry)
      todo_list.add(todo_entry2)
      expect(todo_list.all).to eq [todo_entry, todo_entry2]
    end
  end

  context "searches todo_list" do
    it "returns complete todos" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_entry2 = TodoEntry.new("clean car")
      todo_list.add(todo_entry.mark_done!)
      todo_list.add(todo_entry2.mark_incomplete)
      expect(todo_list.complete).to eq ["take out trash - done!"]
    end

    it "returns incomplete todos" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_entry2 = TodoEntry.new("clean car")
      todo_list.add(todo_entry.mark_done!)
      todo_list.add(todo_entry2.mark_incomplete)
      expect(todo_list.incomplete).to eq ["clean car - incomplete"]
    end

    it "returns nothing in incomplete todos when all are done" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_entry2 = TodoEntry.new("clean car")
      todo_list.add(todo_entry.mark_done!)
      todo_list.add(todo_entry2.mark_done!)
      expect(todo_list.incomplete).to eq []
    end

    context "#give up" do
      it "marks all todos as done - complete returns all - incomplete returns nil" do
      todo_list = TodoList.new
      todo_entry = TodoEntry.new("take out trash")
      todo_entry2 = TodoEntry.new("clean car")
      todo_list.add(todo_entry.mark_incomplete)
      todo_list.add(todo_entry2.mark_incomplete)
      expect(todo_list.give_up!).to eq ["take out trash - done!", "clean car - done!"]
    end
  end
end
end