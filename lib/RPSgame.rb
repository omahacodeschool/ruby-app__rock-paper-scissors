require_relative 'RPS_set_match_max.rb'
require_relative 'RPS_Main'

max_games = 0
@played_games = 0

max_games = start_game(max_games)
@player1 = Main_rps.new()
@player2 = Main_rps.new()

@player1.set_name
@player2.set_name

# Method that increases the number of games won by the player2 Class Instance. 
# It also returns a statement based on victory and loss methods for each player class. 
#
# @player1.set_games_won: Instance Variable for player1 Class, uses Method to increase games_won by 1.
# @player1.get_victory_confirmation: Instance Variable for player1 Class, returns statement declaring player1 the winner, along with the weapon used. 
# @player2.get_loss_confirmation: Instance Variable for player2 Class, returns statement declaring player2 the loser, along with the weapon used. 
#
# EX: a wins with paper! m loses with rock!
#
# Returns 2 Strings
def player1_wins()
  @player1.set_games_won()
  return @player1.get_victory_confirmation + " " + @player2.get_loss_confirmation
  
end

# Method that increases the number of games won by the player2 Class Instance. 
# It also returns a statement based on victory and loss methods for each player class. 
#
# @player2.set_games_won: Instance Variable for player2 Class, uses Method to increase games_won by 1.
# @player2.get_victory_confirmation: Instance Variable for player2 Class, returns statement declaring player2 the winner, along with the weapon used. 
# @player1.get_loss_confirmation: Instance Variable for player1 Class, returns statement declaring player1 the loser, along with the weapon used. 
#
# EX: m wins with paper! a loses with rock!
#
# Returns 2 Strings
def player2_wins()
  @player2.set_games_won
  return @player2.get_victory_confirmation + " " + @player1.get_loss_confirmation
  
end

# Method that checks player1 chosen weapon against player2's chosen weapon using if statements
# Based on certain combinations, player1_wins() or player2_wins() method will be called.
#
# weapon1: 
# weapon2:  
# @player1.get_tie_confirmation: 
# @player1.set_games_tied():
#
# Puts Method, which prints the Method's two returned Strings.
def battle(weapon1, weapon2)

  if weapon1 == weapon2
     @player1.set_games_tied()
     puts @player1.get_tie_confirmation
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

# Method that checks player1 chosen weapon against player2's chosen weapon using if statements
# Based on certain combinations, player1_wins() or player2_wins() method will be called.
#
# wins1: 
# wins2
# @player2.get_name()
# @player1.get_games_tied()
#
# Returns String
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
