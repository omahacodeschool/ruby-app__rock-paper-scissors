
class Game

# Purpose: Initialize variables needed to play the game.
#
# Inputs
  def setup

    player_names

    @player_1_name
    @player_1_score = 0
  
    @player_2_name
    @player_2_score = 0

    @player_victory = (how_many_games + 1) / 2
  end
      
# Purpose: Inform players who won the series.
#
# @player_1_score = an Integer that increases by 1 when player wins 1 game in the series.
# @player_2_score = an Integer that increases by 1 when player wins 1 game in the series.
# @player_victory = an Integer indicating the number of games a player must win to win the series.
#
# returns text to indicate who won the series and the final scoare.

  def display_end_of_series
    if @player_1_score == @player_victory 
        puts "Congratulations #{@player_1_name}"
        puts "You have won this match #{@player_1_score} games to #{@player_2_score}."
    elsif @player_2_score == @player_victory
        puts "Congratulations #{@player_2_name}"
        puts "You have won this match #{@player_2_score} games to #{@player_1_score}."
    end
  end

# Purpose: Inform players of the current score.
#
# Inputs: @player_1_name = a String typed in by Player 1.
#         @player_2_name = a String typed in by Player 2.
#         @player_1_score = an Integer that increases by 1 when Player 1 wins.
#         @player_2_score = an Integer that increases by 1 when Player 2 wins game.
#
# Example: 
#
# Returns players' names and their current score after each game in the series.
  def display_scoreboard
    puts "The score is"
    puts "#{@player_1_name}"+" #{@player_1_score}" 
    puts "#{@player_2_name}"+" #{@player_2_score}"
    puts
  end

# Purpose: To generate games until one player has won enough games to win the series.
#
# Inputs: 
# @player_1_score = An Integer that increases by 1 when Player 1 wins 1 game.
# @player_2_score = An Integer that increases by 1 when Player 2 wins 1 game.
# @player_victory = An Integer. Number of games a player must win to win series.
# choose_weapons = A Method that returns the players' weapons choices.
# display_winner_one_game = a Method that returns the name of the winner of the game just completed, followed by "wins." Accepts the Method determine_winner_one_game as its argument.
# accumulate_series_score = A Method that returns 1 if Player 1 wins and 2 if Player 2 wins.
# display_scoreboard = A Method that returns the current series score. 
  def keep_playing
    until @player_1_score == @player_victory or @player_2_score == @player_victory 
      choose_weapons
      display_winner_one_game(determine_winner_one_game)
      accumulate_series_score(determine_winner_one_game)
      display_scoreboard
    end
  end

  def accumulate_series_score(winner)
    if winner == 1
      return @player_1_score +=1
    elsif winner == 2
      return @player_2_score +=1
    end
  end

#Purpose: Set the number of games one player must win to win the series.
#
#Inputs: match_duration = A String converted to an Integer by the method. It 
#is the maximum number of games that could be played to determine the series #winner.
  def how_many_games
    puts "Please enter 1, 3, 5, or 7 to choose how many games you want to play."
    match_duration = gets.chomp.to_i
  end

#Purpose: Enable players to keyboard in the name they want to use in the game.
#
#Inputs: @player_1_name is a String provided by the player.
#        @player_2_name is a String provided by the player.
#
#Returns a String provided by the player without alteration.
  def player_names
    puts "What name do you want to use, Player 1?"
      @player_1_name = gets.chomp
    puts "What name do you want to use, Player 2?"
      @player_2_name = gets.chomp
  end

#Purpose: Initiate game play for 1 game of rock-paper-scissors.
#
#Inputs: @weapon_p1 = a String ("r," "p," or "s") typed in by Player 1.
#        @weapon_p2 = a String ("r," "p," or "s") typed in by Player 2.
#
#Returns the player's selection, downcased if necessary.
  def choose_weapons
    puts "Choose 'r' for rock, 'p' for paper or 's' for scissors"
      @weapon_p1 = gets.chomp.downcase
    puts "Choose 'r' for rock, 'p' for paper or 's' for scissors" 
      @weapon_p2 = gets.chomp.downcase
  end
 
#Purpose: Determine who won 1 game.
#
#Inputs: @weapon_p1 = a String ("r," "p," or "s") typed in by Player 1.
#        @weapon_p2 = a String ("r," "p," or "s") typed in by Player 2.
#
#Returns 1 if weapon_p1 has won, 2 if weapon_p2 has won, nil if a tie.      
  def determine_winner_one_game
    if @weapon_p1 == "r" && @weapon_p2 == "s"
      return 1 
    elsif @weapon_p1 == "s" && @weapon_p2 == "p"
      return 1 
    elsif @weapon_p1 == "p" && @weapon_p2 == "r"      
      return 1 
  
    elsif @weapon_p1 == "p" && @weapon_p2 == "s"
      return 2
    elsif @weapon_p1 == "r" && @weapon_p2 == "p"
      return 2
    elsif @weapon_p1 == "s" && @weapon_p2 == "r"
      return 2  

    else
      return nil
    end      
  end

# Purpose: To inform the players who won a single game.
# 
# Inputs: r = an Integer returned by the determine_winner_one_game method.
#         r == 1 if Player 1 has won.
#         r == 2 if Player 2 has won.
#         
#         
# Returns: Puts a message to the command line stating who won, or noting a tie.
  def display_winner_one_game(r)
    if r == 1
      puts "#{@player_1_name} wins"
    elsif r == 2
      puts "#{@player_2_name} wins"
    else
      puts "Tie"
    end
  end

end #this is the end of class

new_game = Game.new
new_game.setup
new_game.keep_playing
new_game.display_end_of_series



