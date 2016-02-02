


def add_win_to_score(winner)
  if winner == 1
    @player_1_score += 1
  elsif winner == 2
    @player_2_score += 1
  end
end
@player_1_score = 0
@player_2_score = 0
add_win_to_score(1)

puts @player_1_score