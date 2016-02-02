puts "How many games of RPS must be won in order to declare a winner?"
games_reqd = gets.chomp.to_i

games_remaining = 0
p1_wins = 0
p2_wins = 0

while games_remaining < games_reqd
games_remaining = games_remaining += 1
  
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
  else 
    p1_wins += 0
    p2_wins += 0
    games_remaining += 0
  end
end

if p1_wins > p2_wins
  puts "Players 1 wins!"
else
  puts "Player 2 wins!"
  #elsif tie scenario
end