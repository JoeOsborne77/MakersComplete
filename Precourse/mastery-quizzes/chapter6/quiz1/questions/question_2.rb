puts "Player 1, please enter your move. You can enter rock, paper or scissors"
p1 = gets.chomp
puts "Player 2, please enter your move. You can enter rock, paper or scissors"
p2 = gets.chomp

if p1 == "rock" && p2 == "scissors" 
  puts "Player 1 wins"
elsif p1 == "rock" && p2 == "paper"
  puts "Player 2 wins"
elsif p1 == "rock" && p2 == "rock" 
  puts "It's a draw"
elsif p1 == "scissors" && p2 == "paper" 
  puts "Player 1 wins"
elsif p1 == "scissors" && p2 == "rock"
  puts "Player 2 wins"
elsif p1 == "scissors" && p2 == "scissors" 
  puts "It's a draw"
elsif p1 == "paper" && p2 == "rock" 
  puts "Player 1 wins"
elsif p1 == "paper" && p2 == "scissors"
  puts "Player 2 wins"
elsif p1 == "paper" && p2 == "paper" 
  puts "It's a draw"
end

=begin
possible outcomes:
p1 scissors vs p2 scissors
p1 scissors vs p2 paper
p1 scissors vs p2 rock
p1 rock vs p2 rock
p1 rock vs p2 scissors
p1 rock vs p2 paper
p1 paper vs p2 paper
p1 paper vs p2 scissors 
p1 paper vs p2 rock

=end

# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It"s a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn"t need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn"t work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

