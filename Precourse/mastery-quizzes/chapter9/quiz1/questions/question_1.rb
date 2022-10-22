def score 
  { "two" => 2, "three" => 3, "four" => 4, 
  "five" => 5, "six" => 6, "seven" => 7, 
  "eight" => 8, "nine" => 9, "ten" => 10, 
  "jack" => 10, "queen" => 10, "king" => 10,
  "ace" => 11 }  
end

def random_card
  cards = ["two", "three", "four", "five", "six", "seven", 
    "eight", "nine", "ten", "jack", "queen", "king", "ace"]
  cards[rand(13)]
end

def move 
  puts "hit or stick"
  input = gets.chomp
  total = []
  
  if input == "hit"
    deck = [""]
    deck.push(random_card)
    total += deck.map { |n| score[n].to_i }
    puts "Score so far: #{total.sum}"
    return "hit"
  
    elsif input == "stick" && total.sum <= 21 
      puts "You scored: #{total.sum}"
      abort
    
    elsif input == "stick" && total.sum > 21 
      puts "You busted with: #{total.sum}" 
      abort
  end
end