# Defines Player 1's weapon
#
# User entered
#
# Returns lowercase string
def get_p1_weapon
  puts "Choose your weapon, Player 1"
  gets.chomp.downcase
end


# Defines Player 2's weapon
#
# User entered
#
# Returns lowercase string
def get_p2_weapon
  puts "Choose your weapon, Player 2"
  gets.chomp.downcase
end


# Defines a tie set
#
# $player_1_weapon, $player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns True or False
def tie_set
  $player_1_weapon == $player_2_weapon
end


# Defines a tied match
#
#Player 1 and Player 2s number of set wins
#
#Returns True or False
def tie_match
  $p1_wins == $p2_wins
end


# Defines a winning match
#
#Player 1 and Player 2s number of set wins
#
#Returns True or False
def winning_match
  $p1_wins != $p2_wins
end


# Defines an updated score
#
#Player 1 and Player 2s number of set wins
#
#Puts current score
def score_update
  puts "The score is Player 1 with #{$p1_wins} points to Player 2 with #{$p2_wins} points"
end


# Defines set counter increase by 1 after a win
#
#Player 1's number of set wins
#
#returns integer
def p1_increase_set_counter
  $p1_wins += 1
end


# Defines set counter increase by 1 after a win
#
#Player 2's number of set wins
#
#returns integer
def p2_increase_set_counter
  $p2_wins += 1
end


# Displays Player 1 set win text
def display_player_1_wins
  puts "Player 1 Wins!!!"
end


# Displays Player 2 set win text
def display_player_2_wins
  puts "Player 2 Wins!!!"
end


# Defines the number of sets
#
# User entered
#
# Returns integer
def get_number_sets
  puts "Enter the number of sets you would like to play"
  gets.chomp.to_i
end


# Displays tie set text
def tie_set_text
  puts "Tie set. No points awarded. Stop favoring rock!"
end


# Displays tie match text
def tie_match_text
  puts "It's a tie ballgame folks!!!"
end


# Defines the match winner
#
# Player 1 and Player 2 number of set wins
def player_with_highest_score
  players_points={}
  players_points["Player 1"] = $p1_wins
  players_points["Player 2"] = $p2_wins
  highest_score = players_points.values.max
  player_with_highest_score = players_points.select {|k,v|v == highest_score}.keys
end


# Displays winning match player text
def match_winner_text
  puts player_with_highest_score.join.upcase + " WINS!!!"
end


# Defines a win by Player 1 with paper weapon
#
# $player_1_weapon, $player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns either true or false
def player_1_wins_with_paper
  $player_1_weapon == "paper" && $player_2_weapon != "scissors"
end


# Defines a win by Player 1 with scissors weapon
#
# $player_1_weapon, $player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns either true or false
def player_1_wins_with_scissors
  $player_1_weapon == "scissors" && $player_2_weapon != "rock"
end


# Defines a win by Player 1 with rock weapon
#
# $player_1_weapon, $player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns either true or false
def player_1_wins_with_rock
  $player_1_weapon == "rock" && $player_2_weapon != "paper"
end

$p1_wins = 0
$p2_wins = 0

match = get_number_sets

while $p1_wins + $p2_wins != match

$player_1_weapon = get_p1_weapon
$player_2_weapon = get_p2_weapon

  if tie_set 
    tie_set_text

  elsif player_1_wins_with_paper
    display_player_1_wins
    p1_increase_set_counter
    
  elsif player_1_wins_with_scissors
    display_player_1_wins
    p1_increase_set_counter
    
  elsif player_1_wins_with_rock
    display_player_1_wins
    p1_increase_set_counter
    
  else
    display_player_2_wins
    p2_increase_set_counter
  end

  score_update
end

if tie_match
  tie_match_text

elsif winning_match
  match_winner_text
end










