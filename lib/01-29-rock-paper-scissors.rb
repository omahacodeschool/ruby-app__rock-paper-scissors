puts "How many games should a player win to win the set?"
games_needed_to_win = gets.chomp.to_i

current_Score = {"Player 1"=>0, "Player 2"=>0}

while current_Score.values.max<games_needed_to_win

  puts "Let's play a game of Rock-Paper-Scissors.

  Player 1, what's your move?"
  player_1_move = gets.chomp.downcase

  puts "Player 2, what's your move?"
  player_2_move = gets.chomp.downcase

if player_1_move != player_2_move
  if player_1_move == "rock" && player_2_move == "scissors"
    match_Winner = "Player 1"
  elsif player_1_move == "rock" && player_2_move == "paper"
    match_Winner = "Player 2"
  elsif player_1_move == "paper" && player_2_move == "rock"
    match_Winner = "Player 1"
  elsif player_1_move == "paper" && player_2_move == "scissors"
    match_Winner = "Player 2"
  elsif player_1_move == "scissors" && player_2_move == "paper"
    match_Winner = "Player 1"
  elsif player_1_move == "scissors" && player_2_move == "rock"
    match_Winner = "Player 2"
  end
  puts "One point for " + match_Winner + "!"
  current_Score["#{match_Winner}"] += 1

else player_1_move == player_2_move
  print "That was a draw. Let's play again."

#LOOP SHIT

end
end

player_1_move = "rock"
player_2_move = "scissors"


