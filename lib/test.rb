def determine_player_choice(choice_input)
  print "What is your weapon of choice?   "
  choice_input = gets.chomp
  choice_input = choice_input.downcase

  case choice_input
  when "rock"
    return "rock"
  when "paper"
    return "paper"
  when "scissors"
    return "scissors"
  when "lizard"
    return "lizard"
  when "spock"
    return "spock"
  else
    puts "That's not a valid choice, you goon. Pick again."
    determine_player_choice(choice_input)
  end

end

def determine_set_winner(player1, player2, player1_games_won, player2_games_won, tied_games)

  if player1_games_won > player2_games_won
      return "#{player1.keys.join("")} won the set of games with a score of #{player1_games_won} vs. #{player2_games_won}. There were #{tied_games} tied games."

  elsif player1_games_won < player2_games_won
      return "#{player2.keys.join("")} won the set of games with a score of #{player2_games_won} vs. #{player1_games_won}. There were #{tied_games} tied games."
      

  else player1_games_won == player2_games_won
      return "It was a tie, guys. You're both just super duper."
  end

end

player1_choice_input = ""
player2_choice_input = ""
puts "Let's play 'Rock, Paper Scissors!'"
print "How many games do you want to play?  "
max_games = gets.chomp.to_i
print "PLAYER ONE, enter your name:  "
player1_name = gets.chomp
print "PLAYER TWO, enter your name:  "
player2_name = gets.chomp


played_games = 0
player1_games_won = 0
player2_games_won = 0
tied_games = 0

player1 = {player1_name => player1_choice_input}
player2 = {player2_name => player2_choice_input}


while played_games < max_games do
  played_games += 1
  player1_choice_input = determine_player_choice(player1_choice_input)
  player2_choice_input = determine_player_choice(player2_choice_input)
  player1 = {player1_name => player1_choice_input}
  player2 = {player2_name => player2_choice_input}

  if player1.values == player2.values
    puts " #{player1.values.join("")} vs. #{player2.values.join("")} results in a tie."
    tied_games += 1
  end

  if player1.values.include?("rock") && player2.values.include?("paper")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
    player1_games_won += 1
   end

  if player1.values.include?("rock") && player2.values.include?("scissors")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
    player1_games_won += 1
  end

  if player1.values.include?("scissors") && player2.values.include?("paper")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
    player1_games_won += 1
  end

  if player1.values.include?("scissors") && player2.values.include?("rock")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
    player2_games_won += 1
  end

  if player1.values.include?("paper") && player2.values.include?("rock")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
    player1_games_won += 1
  end

  if player1.values.include?("paper") && player2.values.include?("scissors")
    puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
    player2_games_won += 1
  end 

end

puts determine_set_winner(player1, player2, player1_games_won, player2_games_won, tied_games)
