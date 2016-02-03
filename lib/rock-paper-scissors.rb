require_relative 'game_methods'

match = get_number_sets

while sets_played != match

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










