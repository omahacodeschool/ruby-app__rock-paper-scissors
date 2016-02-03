


def add_win_to_score(winner)
  if winner == 1
    @player_1_score += 1
  elsif winner == 2
    @player_2_score += 1
  end
end
@player_1_score = 2
@player_2_score = 3

puts add_win_to_score(1)

def alert_winner(winner)
  if winner == 0
    puts "That's a draw!"
  elsif winner == 1
    puts "Player 1 wins set number #{@set_number}!"
  elsif winner == 2
    puts "Player 2 wins set number #{@set_number}!"
  end
end
