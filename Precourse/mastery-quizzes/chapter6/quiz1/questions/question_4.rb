def hall
  while true do 
    puts "You are in the Hall. You can enter look or north."
    command = gets.chomp
    if command == "look"
      puts "You are standing in a hall with a marble floor. You see a door."
        elsif command == "north"
          study
        elsif command == "quit"
          abort
    end
  end
end

def study
  while true do     
    puts "You are in the Study. You can enter look, look at desk, 
    south or enter the secret combination 👀."
    command = gets.chomp
    if command == "look"
      puts "You are in a warm and cosy study. You see a safe. You see a desk."
        elsif command == "look at desk"
          puts "You see a piece of paper that reads, The combination is 2451."
            elsif command == "south"
              hall
              elsif command == "2451" 
                puts "You see some diamonds in the safe, pick them up and make your escape"
                abort
              elsif command == "quit"
                abort
    end
  end
end

hall