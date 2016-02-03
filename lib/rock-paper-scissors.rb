require_relative 'game_return_methods'
require_relative 'game_puts_methods'

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

def respell_weapon_text
  puts "Make sure you spelled that right and try again"
  gets.chomp
end




$p1_wins = 0
$p2_wins = 0

match = get_number_sets

while $p1_wins + $p2_wins != match

$player_1_weapon = get_p1_weapon

  until p1_misspelled_weapon
    $player_1_weapon = respell_weapon_text
  end

$player_2_weapon = get_p2_weapon

  until p2_misspelled_weapon
    $player_2_weapon = respell_weapon_text
  end

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










