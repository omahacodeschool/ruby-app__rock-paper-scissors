#This is a little Rock-Paper-Scissors game.


#Determines how many games are needed to win a set.
#
#Gets the number from user input.
#
#Returns the number of games selected as an integer.
def how_many_games
  puts "\nHow many games do you have to win to win a set?"
  return gets.chomp.to_i
end

#Takes the output of how_many_games and displays a message.
#
#best = the number of games needed to win overall
#out_of = the total number of games that will be played to determine a winner.
#
#Example
# 
#  best_of(2)
#  #=> 'Best 2 out of 3 it is!'
#
#Displays a string in the form "Best #{integer} out of #{integer} it is!"
def best_of(how_many_games)
  best = how_many_games
  out_of = best + best - 1
  puts "Best #{best} out of #{out_of} it is!"
end

#Determines the weapon that Player 1 will use for the round.
#
#Gets the weapon from user input.
#
#Returns Player 1's weapon as a string.
def get_player_one_weapon
  puts "\nPlayer 1, choose your weapon!"
  return gets.chomp.downcase
end

#Determines the weapon that Player 2 will use for the round.
#
#Gets the weapon from user input.
#
#Returns Player 2's weapon as a string.
def get_player_two_weapon
  puts "\nPlayer 2, choose your weapon!"
  return gets.chomp.downcase
end

#Determines the winner of a round of Rock_Paper_Scissors.
#
#player1_weapon = The weapon Player 1 is using for the round.
#player2_weapon = The weapon Player 2 is using for the round.
#
#Example
#
#  winner?("rock", "scissors")
#  #=> 1
#
#Returns the winner as an integer or tie as nil.
def winner?(player1_weapon,player2_weapon)
  if player1_weapon == "rock" && player2_weapon == "scissors"
    return 1
  elsif player1_weapon == "paper" && player2_weapon == "rock"
    return 1
  elsif player1_weapon == "scissors" && player2_weapon == "paper"
    return 1
  elsif player2_weapon == "rock" && player1_weapon == "scissors"
    return 2
  elsif player2_weapon == "paper" && player1_weapon == "rock"
    return 2
  elsif player2_weapon == "scissors" && player1_weapon == "paper"
    return 2
  elsif player1_weapon == player2_weapon
    return nil
  end
end

#Takes the output of winner? and displays the victor.
#
#winner = The output from winner?.  Will be 1, 2, or nil.
#
#Example
#
#  display_winner(1)
#  #=> "Player 1 wins the day!"
#
#Displays a string in the form "Player {integer} wins the day!" or "No winner! 
#Tie Game!" in the event of a tie.
def display_winner(winner)
  if winner == nil
    puts "No winner! Tie Game!"
  else
    puts "Player #{winner} wins the day!"
  end
end

#Determines the overall winner of a series of games
#
#p1_wins = The number of rounds Player 1 has won.
#p2_wins = The number of rounds Player 2 has won.
#
#Example
#
#  overall_winner?(1,2)
#  #=> 2
#
#Returns the winner as an integer or nil in the event of a tie.
def overall_winner?(p1_wins,p2_wins)
  if p1_wins > p2_wins
    return 1
  elsif p2_wins > p1_wins
    return 2
  else
    return nil
  end
end

#Takes the output of overall_winner? and displays the victor.
#
#overall_winner = The output from overall_winner?.  Will be 1, 2, or nil.
#
#Example
#
#  display_overall_winner(1)
#  #=> "Player 1 crushes their opponent!"
#
#Displays a string in the form "Player {integer} crushes their opponent!" or
#"No winner! #Tie series!" in the event of a tie.
def display_overall_winner(overall_winner)
  if overall_winner == nil
    puts "No winner! Tied series!"
  elsif 
    puts "Player #{overall_winner} crushes their opponent!"
  end
end

#Aids in incrementing the recorded victories for Player 1.
#
#winner = The output of winner? Will be 1, 2, or nil.
#
#Example
#
#  track_p1_wins(1)
#  #=> 1
#
#Returns a 1 if Player 1 won the round and a 0 if they didn't.
def track_p1_wins(winner)
  if winner == 1
    return 1
  else
    return 0
  end
end

#Aids in incrementing the recorded victories for Player 2.
#
#winner = The output of winner? Will be 1, 2, or nil.
#
#Example
#
#  track_p2_wins(1)
#  #=> 1
#
#Returns a 1 if Player 2 won the round and a 0 if they didn't.
def track_p2_wins(winner)
  if winner == 2
    return 1
  else
    return 0
  end
end

#This plays one round of Rock-Paper-Scissors
#
#player1_weapon = output of get_player_one_weapon.  Will be a string.
#player2_weapon = output of get_player_two_weapon.  Will be a string.
#
#Returns an integer indicating winner or nil in the event of a tie.
def one_round
  player1_weapon = get_player_one_weapon
  player2_weapon = get_player_two_weapon
  return winner?(player1_weapon,player2_weapon)
end

#This plays through a series of Rock-Paper_Scissors rounds.
#
#p1_wins = The number of rounds Player 1 has won
#p2_wins = The number of rounds Player 2 has won
#games = output of how_many_games.  Will be an integer.
#winner = the outcome of playing one round
#overall_winner = winner of the series
#
#Returns the overall winner of the series and displays that information.
def main_game
  p1_wins = 0
  p2_wins = 0
  puts "Let's play Rock-Paper-Scissors!"
  games = how_many_games
  best_of(games)

  until p1_wins == games || p2_wins == games
    winner = one_round
    display_winner(winner)
    p1_wins += track_p1_wins(winner)
    p2_wins += track_p2_wins(winner)
  end

  overall_winner = overall_winner?(p1_wins, p2_wins)
  display_overall_winner(overall_winner)
end

main_game
