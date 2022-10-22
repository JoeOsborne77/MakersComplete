class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def all
    return @todo_list
  end

  def incomplete 
    return @todo_list.select { |todo| todo.match(/incomplete/) }
  end

  def complete
    return @todo_list.select { |todo| todo.match(/done/) }
  end

  def give_up!
    @todo_list.select { |todo| todo.gsub!(/\bincomplete\b/, "done!") }
  end
end