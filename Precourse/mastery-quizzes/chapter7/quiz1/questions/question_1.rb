puts "Please enter a list of numbers, separated by commas and no spaces."
numbers = gets.chomp

dash = "-"
num = numbers.split(",").map! { |n| n.to_i }
num.each { |x| puts dash * x }