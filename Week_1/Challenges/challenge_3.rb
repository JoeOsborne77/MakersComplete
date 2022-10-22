def calculate_reading_time(num_of_words)
  if num_of_words.is_a? Integer 
     num_of_words / 200 
  else  
     "Please enter a number"
  end
end