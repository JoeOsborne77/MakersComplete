class TodoEntry
  def initialize(task) 
    @task = task
  end

  def task
    return @task
  end

  def mark_incomplete
    @task.concat(" - incomplete")
  end

  def mark_done!
    @task.concat(" - done!")
  end

  def done?
    @task.end_with?("done!")
  end
end