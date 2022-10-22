require_relative "../lib/todo_list.rb"

RSpec.describe TodoList do
  context "initially" do
    it "has an empyty list" do
    todo_list = TodoList.new
    expect(todo_list.all).to eq []
    end
  end
end