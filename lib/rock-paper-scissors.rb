# Define a method to play a game of RPS
#
# Rock beats scissors, loses to paper
# Paper beats rock, loses to scissors
# Scissors beats paper, loses to rock
#
# Creates the class
#
class RPS_Game
#
# Displays the String passed in from the method identify_player_text to both
# players
#
# Asks and collects their names with gets.chomp
#
  def identify_player
    indentify_player_text
    gets.chomp.capitalize
  end
#
# Based on the value of round_count, choose_weapon_text puts' a String from
# the Array player_id_text
# 
# @player_count increases by 1
#
  def indentify_player_text
    player_id_text = [
      "Who dares enter the field of battle?",
      "And who shall you test your fate against, #{@player1}?"
    ]

    puts player_id_text[@player_count].to_s
    @player_count += 1
  end
#
# In the unlikely event of ties pushing past round 5 (@round_count == 10),
# @round_count is reset to 0 
#
# Displays the String passed in from the method choose_weapon_text to both
# players
#
# Asks and collects their weapons with gets.chomp
#
  def choose_weapon
    if @round_count == 10
      @round_count = 0
      choose_weapon_text
      gets.chomp.downcase
    else
      choose_weapon_text
      gets.chomp.downcase
    end
  end
#
# Based on the value of round_count, choose_weapon_text puts' a String from
# the Array weapon_text
#
# @round_count increases by 1
#
  def choose_weapon_text
    weapon_text = [
      "Very well. #{@player1}, what is your weapon of choice: Rock, paper, or scissors?",
      "Now #{@player2}, with what do you wish to vanquish #{@player1}: Rock, paper, or scissors?",
      "Again, #{@player1}! Choose your weapon.",
      "And you, #{@player2}, another chance to fell your foe...",
      "Things are really heating up, #{@player1}. Pick your poison.",
      "Finish him #{@player2}! Rock, paper, or scissors?",
      "Again? Alright #{@player1}, choose another weaopon I guess.",
      "#{@player2}, you know the drill.",
      "This is it! Last chance to redeem your pride #{@player1}.",
      "Sweep the leg #{@player2}!!!"
    ]

    puts weapon_text[@round_count].to_s
    @round_count += 1
  end
#
# The choose_weapon method is called for each player to choose their weapon
#
# The Hash @who_won sets the parameters by which a win is determined for both
# players: the hierarchy of rock, paper, scissors
#
# If one or the other player wins, 1 is added to their respective win counter
#
# If they both choose the same weapon, a tie is evaluated and the block ends
#
  def game_winner
      @weapon1 = choose_weapon
      @weapon2 = choose_weapon

    @who_won = {
      "weapon_1_won" => (@weapon1 == "rock" && @weapon2 == "scissors") || (@weapon1 == "paper" && @weapon2 == "rock") || (@weapon1 == "scissors" && @weapon2 == "paper"), 
      "weapon_2_won" => (@weapon2 == "rock" && @weapon1 == "scissors") || (@weapon2 == "paper" && @weapon1 == "rock") || (@weapon2 == "scissors" && @weapon1 == "paper")
    }
    
    if    @who_won["weapon_1_won"]
      @win1 += 1
    elsif @who_won["weapon_2_won"]
      @win2 += 1
    else
    end
    game_winner_text
  end
#
# Defines the String passed in to game_winner based on @win counts 1 and 2, or
# recognizes a tie if the same weapon is chosen
#
# Need to find evaluation based on last round won instead of overall win count
#
# Created a Hash to store the winner text for each player
#
# Hoping to pass the evaluation of the last round winner from the method 
# game_winner
#
  def game_winner_text
    winner_text = {
      "winner1" => ("#{@weapon1.capitalize} defeats #{@weapon2}, and #{@player1} vanquishes #{@player2}! \nFor shame, #{@player2}..."),
      "winner2" => ("You chose wisely, #{@player2}! #{@weapon2.capitalize} is certainly mightier than the feeble #{@weapon1}. \nYou disgust me #{@player1}."),
      "tie_game" => ("We have a tie! It seems #{@player1} and #{@player2} are indeed well matched... \nYou both chose #{@weapon1}.")
    }
    
    if    @who_won["weapon_1_won"]
      puts winner_text["winner1"]
    elsif @who_won["weapon_2_won"]
      puts winner_text["winner2"]
    elsif @weapon1 == @weapon2
      puts winner_text["tie_game"]
    end
  end
#
# Defines the method, best_of_5, to loop the program, repeating game_winner,
# best_of_5_text, and choose_weapon until either player 1 or player 2 wins 3
# games (@win1 or @win2 == 3)
#
# NEED TO FIX : Evaluates 1 more round of choose_weapon after 3 won rounds
#
  def best_of_5
    while @win1 < 3 && @win2 < 3 
      game_winner
      best_of_5_text 
    end
  end
#
# Based on the values of @win1 and @win2, 1 of 3 Strings is passed from
# best_of_5_text to best_of_5
#
  def best_of_5_text
    best_text = {
      "player1_best" => ("Congrats, #{@player1}! You've won #{@win1} matches."),
      "player2_best" => ("Congrats, #{@player2}! You've won #{@win2} matches."),
      "score_card" => ("#{@player1}: #{@win1} // #{@player2}: #{@win2}")
    }
    
    if @win1 == 3
      puts best_text["player1_best"]
    elsif @win2 == 3
      puts best_text["player2_best"]
    elsif @win1 < 3 || @win2 < 3
      puts best_text["score_card"]
    end
  end
#
# Sets @player_count, @round_count, and both @win variables to 0 in order to
# act as counters
#
  def set_initial_values
    @player_count = 0
    @round_count = 0
    @win1 = 0
    @win2 = 0
    @player1 = identify_player
    @player2 = identify_player
  end
#
# Sets player and weapons variables based on what is returned from the
# identify_player and choose_weapn methods
#
end
#
# Places RPS_Game within the variable new_game
#
new_game = RPS_Game.new
#
# Calls set_initial_values method on new_game to, well, set the initial values
#
new_game.set_initial_values
#
# Calls the method, best_of_5, on new_game to begin the process
#
new_game.best_of_5