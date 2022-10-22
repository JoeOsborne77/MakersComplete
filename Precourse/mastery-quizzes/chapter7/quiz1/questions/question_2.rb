puts "Enter the number of groups you would like to create"
group_number = gets.chomp.to_i

array = Array.new(group_number) { [] }

puts "Please enter a name"
count = 0
while input_name = gets.chomp
  if input_name == "stop"
    break
    elsif input_name != "stop"
      puts "Please enter a name"     
      array[count] << input_name
      count += 1
      count = 0 if count == group_number
  end
end

puts "Please enter the number of the group you would like to print"

while group_to_print = gets.chomp
  if group_to_print == "stop"
    exit   
  elsif group_to_print != "stop"
    puts array[group_to_print.to_i - 1].join(", ")
    puts "Please enter the number of the group you would like to print"
  end
end



