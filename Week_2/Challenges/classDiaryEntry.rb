class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
   @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(",").size 
  end

  def reading_time(wpm)
    fail "WPM must be > 0" unless wpm > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    
    

    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end