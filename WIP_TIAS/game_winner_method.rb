

def game_winner
  if @player_1_score > @player_2_score
    return @player_1_name
  elsif @player_2_score > @player_1_score
    return @player_2_name
  end
end

@player_1_score = 2
@player_2_score = 1
@player_1_name = "Amy"
@player_2_name = "Timmy"

puts game_winner