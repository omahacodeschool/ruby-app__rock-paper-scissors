puts "Player 1: rock, paper or scissors?"
p1_move = gets.chomp

puts "Player 2: rock, paper or scissors?"
p2_move = gets.chomp

if (p1_move == "rock" && p2_move == "scissors")
  puts "Player 1 wins!"
elsif (p1_move == "rock" && p2_move == "paper")
  puts "Player 2 wins!"
elsif (p1_move == "paper" && p2_move == "rock")
  puts "Player 1 wins!"
elsif (p1_move == "paper" && p2_move == "scissors")
  puts "Player 2 wins!"
elsif (p1_move == "scissors" && p2_move == "paper")
  puts "Player 1 wins!"
elsif (p1_move == "scissors" && p2_move == "rock")
  puts "Player 2 wins!"
else
  puts "That was a draw!"
end