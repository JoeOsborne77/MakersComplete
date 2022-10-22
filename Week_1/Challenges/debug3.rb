
def get_most_common_letter(text) 
  counter = Hash.new(0) 
  text.strip.chars.each do |char| 
    counter[char] += 1
  end
  counter.delete(" ")
  counter.to_a.max_by { |k, v| v }
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")


# puts "line one: defines method called get_most_common_letter with parameter 'text'"
# puts "line two: creates a new variable 'Counter' with Hash.new(0)(sets default value for any key to 0, while {} sets nil"
# puts "line 3&4: uses .chars to split text by letter, iterates over all of them using .each and block. \nIt then adds 1 to the counter hash key (key started as 0) + the value is each letter"
# puts "line 6: turns counter into array and sorts by #unsure and returns ! instead of 0"



# Intended output:
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
