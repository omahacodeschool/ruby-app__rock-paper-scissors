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


# Defines misspelled word as new word
#
# user entry
#
# returns string
def respell_weapon_text
  puts "Make sure you spelled that right and try again"
  gets.chomp
end


# Displays an updated score
#
#Player 1 and Player 2s number of set wins
#
#Puts current score
def score_update
  puts "The score is Player 1 with #{$p1_wins} points to Player 2 with #{$p2_wins} points"
end


# Displays Player 1 set win text
def display_player_1_wins
  puts "Player 1 Wins!!!"
end


# Displays Player 2 set win text
def display_player_2_wins
  puts "Player 2 Wins!!!"
end


# Displays tie set text
def tie_set_text
  puts "Tie set. No points awarded. Stop favoring rock!"
end


# Displays tie match text
def tie_match_text
  puts "It's a tie ballgame folks!!!"
end


# Displays winning match player text
def match_winner_text
  puts player_with_highest_score.join.upcase + " WINS!!!"
end


