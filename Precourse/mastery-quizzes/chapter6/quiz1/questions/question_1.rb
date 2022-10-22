input = []
while true do
  puts "Give me a number"
  number = gets.chomp
  input << number.to_i 
  if number == "stop"
    puts input.sum
    break
  end 
end

=begin
1. we need a continous loop that allows user to enter a number and doesn't break until
user enters the string 'stop'.
2. at the point of stop the program needs to 'puts' the sum of all the numbers added
=end