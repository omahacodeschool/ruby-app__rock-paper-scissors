#TomDoc here
def find_match_winner(player_1_move, player_2_move)
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
  return match_Winner
end

#TomDoc here
def determine_number_of_games
  puts "How many games should a player win in order to win the set?"
  $games_needed_to_win = gets.chomp.to_i
  return $games_needed_to_win
end

#TomDoc here
def get_first_players_move(player_1_move)
  puts "Player 1, what's your move?"
  player_1_move = gets.chomp.downcase
  return player_1_move
end

#TomDoc here
def get_second_players_move(player_2_move)
  puts "Player 2, what's your move?"
  player_2_move = gets.chomp.downcase
  return player_2_move
end

current_Score = {"Player 1"=>0, "Player 2"=>0}

puts "Let's play a game of Rock-Paper-Scissors."

determine_number_of_games

while current_Score.values.max<$games_needed_to_win

  player_1_move = get_first_players_move(player_1_move)

  player_2_move = get_second_players_move(player_2_move)
  
  if player_1_move != player_2_move

    match_Winner = find_match_winner(player_1_move, player_2_move)

    puts "One point for " + match_Winner + "!"
    current_Score["#{match_Winner}"] += 1
    puts "Player 1 has #{current_Score["Player 1"]} point(s), and player 2 has #{current_Score["Player 2"]} point(s)."

  else
    print "That was a draw. Let's play again. "


  end

if current_Score["Player 1"] >= $games_needed_to_win
  puts "Player 1 wins!"
elsif current_Score["Player 2"] >= $games_needed_to_win
  puts "Player 2 wins!"
else
  next
end

  end


