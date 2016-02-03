# Defines when weapon is misspelled by player 1
#
# $player_1_weapon, $player_2_weapon - A string of anything other than "rock","paper", or "scissors"
# Returns True or False
def p1_misspelled_weapon
  ($player_1_weapon == "paper") || ($player_1_weapon == "rock") || ($player_1_weapon == "scissors")
end


# Defines when weapon is misspelled by player 2
#
# $player_1_weapon, $player_2_weapon - A string of anything other than "rock","paper", or "scissors"
# Returns True or False
def p2_misspelled_weapon
  ($player_2_weapon == "paper") || ($player_2_weapon == "rock") || ($player_2_weapon == "scissors")
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


# Defines the number of sets
#
# User entered
#
# Returns integer
def get_number_sets
  puts "Enter the number of sets you would like to play"
  gets.chomp.to_i
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