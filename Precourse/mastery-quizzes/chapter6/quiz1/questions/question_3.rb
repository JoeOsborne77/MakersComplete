output = []

while true do 
  puts "Please enter your command, north or south"
  command = gets.chomp

  if command == "south" 
    output.push("s")
    puts "You are in a scary passage."
    
  elsif command == "north"
    output.push("n")
    puts "You are in a scary cave."
  end

  if output.join.include?("nn")
    puts "You walk into sunlight."
    break
  end
end  