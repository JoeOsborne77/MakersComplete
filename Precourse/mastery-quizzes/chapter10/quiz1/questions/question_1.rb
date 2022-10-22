class Todo
  def initialize(string)
    @string = string
  end
  
  def text
    @string
  end
end
  
class TodoList
  def initialize
    @todolist = []
  end
  
  def add(todo)
    @todolist << todo
  end
  
  def print
    @todolist.each do |item|
      puts "* #{item.text}"
    end
  end
end