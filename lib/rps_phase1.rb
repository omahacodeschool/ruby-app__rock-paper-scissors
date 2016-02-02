puts "Would you like to play best of 3, 5, 7...? (Pick an odd number)"
games_requested = gets.chomp.to_i

p1_wins = 0
p2_wins = 0

until p1_wins or p2_wins > games_requested / 2 
  
  puts "Player 1: rock, paper or scissors?"
  p1_move = gets.chomp.downcase

  puts "Player 2: rock, paper or scissors?"
  p2_move = gets.chomp.downcase

  if (p1_move == "rock" && p2_move == "scissors")
    p1_wins += 1
  elsif (p1_move == "rock" && p2_move == "paper")
    p2_wins += 1
  elsif (p1_move == "paper" && p2_move == "rock")
    p1_wins += 1
  elsif (p1_move == "paper" && p2_move == "scissors")
    p2_wins += 1
  elsif (p1_move == "scissors" && p2_move == "paper")
    p1_wins += 1
  elsif (p1_move == "scissors" && p2_move == "rock")
    p2_wins += 1
  else #tie scenario
    p1_wins += 0
    p2_wins += 0
  end
end

if p1_wins > games_requested / 2 
  puts "Players 1 wins!"
elsif p2_wins > games_requested / 2 
  puts "Player 2 wins!"
end