
puts "Let's play 'Rock, Paper Scissors!'"
print "Player, what is your name?"
:player1_name = gets.chomp
print "What is your weapon of choice?"
player1_choice_input = gets.chomp.downcase
player1_choice_input = determine_player_choice(player1_choice_input)
print "Player, what is your name?"
:player2_name = gets.chomp
player2_choice_input = gets.chomp.downcase
player2_choice_input = determine_player_choice(player2_choice_input)
max games = 1
played_games = 0
player1_games_won = 0
player2_games_won = 0

# key = player. value = input
players = {:player1_name => player1_choice_input, :player2_name => player2_choice_input}

print players

def determine_player_choice(choice_input)

  case player_choice
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

while played_games  <= max_games

if user1 choice == user 2 choice
true
played_games += 1
puts "#{player1_choice_input} vs. "

rock a > Paper
true


rock > Scissors
true

paper = paper
true
"tie"

paper < Scissors

scissors = scissors

def (player1_choice, player2_choice)
case game_outcome
when condition
  
end