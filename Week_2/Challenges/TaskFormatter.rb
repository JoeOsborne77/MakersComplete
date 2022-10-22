class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task
    @complete = false
  end

  def mark_complete
    @complete = true
  end

  def format    
    @complete == true ? "- [x] #{@task}" : "- [ ] #{@task}"
  end
end