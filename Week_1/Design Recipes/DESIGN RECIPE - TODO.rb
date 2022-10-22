DESIGN RECIPE - TODO

1. Describe the Problem
  user wants a todo list that allows them to add todos to the list, mark them as complete, see current todo list and see complete list

2. Design the Class Interface
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end

3. Create Examples as Tests
it "allows user to input task and returns said task" do
  Todo = Todo.new
  expect(Todo("clean car")).to eq "clean car"
end

it "marks a to do as done" do
  Todo = Todo.new
  expect(Todo("clean car").mark_done!).to eq "clean car - done!"
end

it "returns true if task is done" do
  Todo = Todo.new
  expect(Todo("clean car - done").done?).to eq true
end

it "returns false if task is not done" do
  Todo = Todo.new
  expect(Todo("clean car").done?).to eq false
end


4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.
At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
Copy and fill out this template for each of the below exercises.