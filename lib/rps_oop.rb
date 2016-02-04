# new class for Game
#
# method ask_for_odd_num_games gets # of games to play from user

class Game
  def ask_for_odd_num_games
    puts "Would you like to play best of 3, 5, 7...? (Pick an odd number)"
    gets.chomp.to_i 
  end 

# method set_initial_scores sets both players' scores to zero

  def set_initial_scores
    @p1_wins = 0
    @p2_wins = 0
  end 

# method set_num_of_games equates...

  def set_num_of_games
    @num_of_games_chosen = ask_for_odd_num_games
  end

# method p1_choose_weapon gets rock, paper or scissors from player 1 in the command line interface
#
# method returns String

  def p1_choose_weapon
    puts "\nPlayer 1: rock, paper or scissors?" 
    gets.chomp.downcase
  end 

# method p2_choose_weapon gets rock, paper or scissors from player 2 in the command line interface
#
# method returns String

  def p2_choose_weapon
    puts "\nPlayer 2: rock, paper or scissors?" 
    gets.chomp.downcase
  end 

# method playing_rps defines the ways in which a player can win a game (or what happens in a tie scenario) and adds a win to the winning player's tally
#
# state changes: instance variables @p1_wins/@p2_wins can change depending on outcome

  def playing_rps
    if (@p1_move == "rock" && @p2_move == "scissors")
      return 1
    elsif (@p1_move == "rock" && @p2_move == "paper")
      return 2
    elsif (@p1_move == "paper" && @p2_move == "rock")
      return 1
    elsif (@p1_move == "paper" && @p2_move == "scissors")
      return 2
    elsif (@p1_move == "scissors" && @p2_move == "paper")
      return 1
    elsif (@p1_move == "scissors" && @p2_move == "rock")
      return 2
    elsif @p1_move == @p2_move
      return nil
    end
  end 
  
  def wins_tally(winner) # winner is an integer, return from playing_rps
    if winner == 1
      @p1_wins +=1
    elsif winner == 2
      @p2_wins += 1
    else
      @p1_wins += 0
      @p2_wins += 0
    end
  end

    # Example of how to factor algorithmic logic out of the loop_thru_game method, in order to potentially test
    #
    # def game_threshold_met
    # @p1_wins > (@num_of_games_chosen / 2) || @p2_wins > (@num_of_games_chosen / 2)
    # end

# method loop_thru_game defines how a winner is determined (winning more than half of # of games chosen by user) and keeps looping loop_thru_game until p1 or p2 reaches this threshold
#
# at that point, method match_winner is called

  def loop_thru_game
    until @p1_wins > (@num_of_games_chosen / 2) || @p2_wins > (@num_of_games_chosen / 2)
    # the above would be replaced with game_threshold_met, if we were to refactor it further

      set_p1_move(p1_choose_weapon) #setting p1 move to a string
      set_p2_move(p2_choose_weapon)

      wins_tally(playing_rps) 
    end
    match_winner
  end 

# method set_p1_move.... 

  def set_p1_move(user_response) # user_response is a string
    @p1_move = user_response
  end

# method set_p2_move.... 

  def set_p2_move(user_response) # user_response is a string
    @p2_move = user_response
  end

# method match_winner returns winning message to player who first wins > 50% of user-determined # of games 
#
# method returns String
  def match_winner
    if @p1_wins > @num_of_games_chosen / 2 
      puts "\nPlayer 1 wins!"
    elsif @p2_wins > @num_of_games_chosen / 2 
      puts "\nPlayer 2 wins!"
    end 
  end 
end