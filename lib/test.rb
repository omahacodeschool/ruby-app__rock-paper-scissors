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
  # eventually this needs to call back the player choice method so the player can enter a valid option
    return "i'm a big doo doo head" 
  end

end

def new_game_player_choice (new_choice)

end
player1_choice_input = ""
player2_choice_input = ""
puts "Let's play 'Rock, Paper Scissors!'"
print "Player, enter your name:  "
player1_name = gets.chomp
player1_choice_input = determine_player_choice(player1_choice_input)
player2_name = gets.chomp
player2_choice_input = determine_player_choice(player2_choice_input)



$played_games = 0
$player1_games_won = 0
$player2_games_won = 0
max_games = 3

# key = player. value = input
player1 = {player1_name => player1_choice_input}
player2 = {player2_name => player2_choice_input}
puts player1
puts player2


    
    if player1.values == player2.values
       puts " #{player1.values.join("")} vs. #{player2.values.join("")} results in a tie."
       $played_games += 1
    end

    if player1.values.include?("rock") && player2.values.include?("paper")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
             $played_games += 1
             $player1_games_won += 1
    end

    if player1.values.include?("rock") && player2.values.include?("scissors")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
             $played_games += 1
             $player1_games_won += 1
    end

    if player1.values.include?("scissors") && player2.values.include?("paper")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
             $played_games += 1
             $player1_games_won += 1
    end

    if player1.values.include?("scissors") && player2.values.include?("rock")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
             $played_games += 1
             $player2_games_won += 1
    end

    if player1.values.include?("paper") && player2.values.include?("rock")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player1.keys.join("")} wins!"
             $played_games += 1
             $player1_games_won += 1
    end

    if player1.values.include?("paper") && player2.values.include?("scissors")
             puts " #{player1.values.join("")} vs. #{player2.values.join("")}: #{player2.keys.join("")} wins!"
             $played_games += 1
             $player2_games_won += 1
             player1.each{ |key,value| my_hash[key] = "" }
             player2.each{ |key,value| my_hash[key] = "" }
    end 


