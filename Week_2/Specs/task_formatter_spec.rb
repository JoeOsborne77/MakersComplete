require_relative "../lib/TaskFormatter.rb"

RSpec.describe TaskFormatter do
  context "given an instance of Task" do
    it "formats task accordingly (complete / incomplete)" do
      task_1 = double :task, title: "clean car"
      task_formatter = TaskFormatter.new(task_1)
      task_formatter.mark_complete
      expect(task_formatter.format).to eq "- [x] #{task_1}"
    end
  end

  context "given an instance of Task" do
    it "formats task accordingly (complete / incomplete)" do
      task_1 = double :task, title: "clean car", complete: false
      task_formatter = TaskFormatter.new(task_1)
      expect(task_formatter.format).to eq "- [ ] #{task_1}"
    end
  end
end