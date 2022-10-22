require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "returns list of one task" do
    task_list = TaskList.new
    task = double :track
    task_list.add(task)
    expect(task_list.all).to eq [task]
  end
  it "returns list of tasks" do
    task_list = TaskList.new
    task = double :track
    task2 = double :track
    task_list.add(task)
    task_list.add(task2)
    expect(task_list.all).to eq [task, task2]
  end
  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = double :track, complete?: true
    task_2 = double :track, complete?: true
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq true
  end
  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = double :track, complete?: true
    task_2 = double :track, complete?: false
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end
end