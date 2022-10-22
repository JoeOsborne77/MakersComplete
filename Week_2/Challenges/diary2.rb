class Diary
  def initialize
    @entries = []
    @todo = []
    @contacts = []
  end

  def add_new_entry(entry) #instance of diary_entry, not string
    if entry.match(/#todo/)
      @todo << entry.gsub!(/\b#todo\b/, "")
    elsif entry.match(/#entry/)
        @entries << entry.gsub!(/\b#entry\b/, "")
    else entry.match(/#contact/)
      @contacts << entry.gsub!(/\b#contact\b/, "")
    end
  end

  def read_entries
    @entries
  end

  def read_todos
    @todo
  end

  def see_contact_directory
    @contacts
  end

  def longest_possible_entry(wpm, minutes)
    total_words = wpm * minutes
    wordcount = @entries.map { |entry| entry.split(" ").size}
    difference = wordcount.map { |count| total_words - count < 0 ? total_words + count : total_words - count }
    @entries[difference.index(difference.min)]
  end
end