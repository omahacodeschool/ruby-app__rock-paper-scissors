
def alert_winner(winner)
  if winner == 0
  puts "That's a draw!"
  elsif winner == 1
  puts "Player 1 wins set number #{@set_number}!"
  elsif winner == 2
  puts "Player 2 wins set number #{@set_number}!"
  end
end

@set_number = 2

alert_winner(1)