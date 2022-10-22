DESIGN RECIPE - TODO LIST

1. Describe the Problem
  user wants a todo list that allows them to add todos to the list, mark them as complete, see current todo list and see complete list

2. Design the Class Interface
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

3. Create Examples as Tests
  it "adds instances or tasks from Todo and returns nothing"
  todolist = TodoList.new
  todolist.add("clean car")
  expect(todolist).to eq nil
  
  it "returns all incomplete tasks"
  todolist = TodoList.new
  todolist.add("clean car", "walk dog", "go to gym")
  expect(todolist.incomplete).to eq ["clean car", "walk dog", "go to gym"]

  it "returns all complete tasks"
  todolist = TodoList.new
  todolist.add("clean car - done!", "walk dog - done!", "go to gym - done!")
  expect(todolist.complete).to eq ["clean car - done!", "walk dog - done!", "go to gym - done!"]

  it "marks all tasks as -done!"
  todolist = TodoList.new
  todolist.add("clean car", "walk dog", "go to gym")
  expect(todolist.give_up!).to eq ["clean car - done!", "walk dog - done!", "go to gym - done!"]


4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.
At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.
Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
Copy and fill out this template for each of the below exercises.