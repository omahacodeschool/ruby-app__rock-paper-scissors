require_relative 'RPS_set_match_max.rb'
require_relative 'RPS_Main'

max_games = 0
@played_games = 0

max_games = start_game(max_games)
@player1 = Main_rps.new()
@player2 = Main_rps.new()

@player1.set_name
@player2.set_name

def player1_wins()
  @player1.set_games_won
  return @player1.get_victory_confirmation + " " + @player2.get_loss_confirmation
  
end

def player2_wins()
  @player2.set_games_won
  return @player2.get_victory_confirmation + " " + @player1.get_loss_confirmation
  
end

def battle(weapon1, weapon2)

  if weapon1 == weapon2
     puts @player1.get_tie_confirmation
     @player1.set_games_tied
  end
  
  if weapon1 == "rock" && weapon2 == "paper"
    puts player2_wins()
  end

  if weapon1 == "rock" && weapon2 =="scissors"
     puts player1_wins()
  end

  if weapon1 == "scissors" && weapon2 == "paper"
     puts player1_wins()
  end

  if weapon1 == "scissors" && weapon2 == "rock"
     puts player2_wins()
  end

  if weapon1 == "paper" && weapon2 == "rock"
     puts player1_wins()
  end

  if weapon1 == "paper" && weapon2 == "scissors"
     puts player2_wins()
  end

end

def determine_set_winner(wins1, wins2)
  if wins1 > wins2
      return "#{@player1.get_name} won the set of games with a score of #{wins1} vs. #{wins2}. Both players tied #{@player1.get_games_tied()} time(s)."

  elsif wins1 < wins2
      return "#{@player2.get_name()} won the set of games with a score of #{wins2} vs. #{wins1}. Both players tied #{@player1.get_games_tied()} time(s)."
        
  else wins1 == wins2
      return "It was a tie, guys. You're both just super duper."
  end
end

while @played_games < max_games do
  @played_games += 1
  @player1.set_weapon()
  @player2.set_weapon()
  battle(@player1.get_weapon(), @player2.get_weapon())
end

puts determine_set_winner(@player1.get_games_won(), @player2.get_games_won())
