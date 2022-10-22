class DiaryEntry
  def initialize(entry)
    @entry = entry
  end

  def constructs
    @entry
  end

  def mark_as_todo
    @entry.concat("#todo")
  end

  def mark_as_entry 
    @entry.concat("#entry")
  end

  def mark_as_contact
    @entry.concat("#contact")
  end
end