def round1
  puts "--P--"  
  puts "--C--"
  puts "CC-CC"
  puts "CC-CC"
    
  while true do 
    puts "\n\nDo you want to go left, right or neither?\n\n"
    command = gets.chomp
      
    if command == "left"
      puts "-----"  
      puts "-PC--"
      puts "CC-CC"
      puts "CC-CC"
      round2l
    
        elsif command == "right"
          puts "-----"  
          puts "--CP-"
          puts "CC-CC"
          puts "CC-CC"
          round2r
    
        elsif command == "neither"
          puts "You were eaten!"
          abort
    end
  end
end
    
def round2l
  while true do 
    puts "\n\nDo you want to go left, right or neither?\n\n"
    command = gets.chomp
      
    if command == "neither"
      puts "You were eaten!"
      abort    
        
        elsif command == "left"
          puts "You were eaten!"
          abort
    
        elsif command == "right"
          puts "-----"  
          puts "--C--"
          puts "CCPCC"
          puts "CC-CC"
          round3r
    end
  end
end

def round2r
  while true do 
    puts "\n\nDo you want to go left, right or neither?\n\n"
    command = gets.chomp
       
    if command == "left"
      puts "-----"  
      puts "-----"
      puts "CCPCC"
      puts "CC-CC"
      round3l
        
        else 
          puts "You were eaten!"
          abort
    
    end
  end
end
    
def round3l
  while true do 
    puts "\n\nDo you want to go left, right or neither?\n\n"
    command = gets.chomp              
  
    if command == "neither"
      puts "You survived!"
      abort
        
        elsif command == "right"
          puts "You were eaten!"
          abort   
        
        elsif command == "left"
          puts "You were eaten!"
          abort
    end
  end
end
    
def round3r
  while true do 
    puts "\n\nDo you want to go left, right or neither?\n\n"
    command = gets.chomp
      
    if command == "neither"
      puts "You survived!"
      abort
      
        elsif command == "left"
          puts "You were eaten!"
          abort
      
        elsif command == "right"
          puts "You were eaten!"
          abort    
    end
  end
end
round1
