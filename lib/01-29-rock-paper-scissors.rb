class Game
  # finds player that won the set
  #
  # no parameters
  #
  # Example:
  #
  # find_match_winner("rock", "scissors")
  # => "Player 1"
  #
  # Returns String of winning player from set of moves
  def find_match_winner
    if @player_1_move == "rock" && @player_2_move == "scissors"
      @match_Winner = "Player 1"
    elsif @player_1_move == "rock" && @player_2_move == "paper"
      @match_Winner = "Player 2"
    elsif @player_1_move == "paper" && @player_2_move == "rock"
      @match_Winner = "Player 1"
    elsif @player_1_move == "paper" && @player_2_move == "scissors"
      @match_Winner = "Player 2"
    elsif @player_1_move == "scissors" && @player_2_move == "paper"
      @match_Winner = "Player 1"
    elsif @player_1_move == "scissors" && @player_2_move == "rock"
      @match_Winner = "Player 2"
    end
    return @match_Winner
  end

  # establishes number of games required to win set
  # 
  # no parameters
  #
  # Returns Integer of amount of games needed to win
  def determine_number_of_games
    puts "How many games should a player win in order to win the set?"
    @games_needed_to_win = gets.chomp.to_i
    return @games_needed_to_win
  end

  # Finds move for player 1
  #
  # no parameters
  #
  # Example:
  # 
  # get_first_players_move("Rock")
  # => "rock"
  #
  # Returns downcased String of player's move
  def get_first_players_move
    puts "Player 1, what's your move?"
    @player_1_move = gets.chomp.downcase
    return @player_1_move
  end

  def set_player_1 (x)
    @player_1_move = x
  end

  # Finds move for player 2
  #
  # no parameters
  #
  # Example:
  # 
  # get_first_players_move("SCISSORS")
  # => "scissors"
  #
  # Returns downcased String of player's move
  def get_second_players_move
    puts "Player 2, what's your move?"
    @player_2_move = gets.chomp.downcase
    return @player_2_move
  end

  def set_player_2 (x)
    @player_2_move = x
  end

  # sets score for both players to 0
  #
  # no parameters
  #
  # Returns Hash of two players, both with 0 score
  def set_initial_score
    @current_Score = {"Player 1"=>0, "Player 2"=>0}
    return @current_Score
  end

  # determines whether a game-ending score has been reached
  #
  # no parameters
  #
  # returns true if no player has reached point requirement
  def game_time?
    @current_Score.values.max<@games_needed_to_win
  end

  # determines whether both players have entered the same move
  #
  # no parameters
  #
  # Returns true if players have entered different moves
  def not_a_draw?
    @player_1_move != @player_2_move
  end

  # adds 1 point to match winner's score
  #
  # no parameters
  #
  # returns updated Integer of match winner's score
  def add_point_to_winner
    @current_Score["#{@match_Winner}"] += 1
  end

  # announces winner of most recent match
  #
  # no parameters
  #
  # returns puts statements of match winner and updated scores
  def announce_match_winner
    puts "One point for " + @match_Winner + "!"
    puts "Player 1 has #{@current_Score["Player 1"]} point(s), and player 2 has #{@current_Score["Player 2"]} point(s)."
  end

  # determines whether player 1 has won the game
  #
  # no parameters
  #
  # returns true if player 1 has won the game
  def player_1_wins?
    @current_Score["Player 1"] >= @games_needed_to_win
  end

  # determines whether player 2 has won the game
  #
  # no parameters
  #
  # returns true if player 2 has won the game
  def player_2_wins?
    @current_Score["Player 2"] >= @games_needed_to_win
  end

  # loops through game as many times as requested by players
  #
  # no parameters
  #
  # returns puts statement of set winner
  def run_through_game
    puts "Let's play a game of Rock-Paper-Scissors."

    set_initial_score
    determine_number_of_games

    while game_time? == true
      get_first_players_move
      get_second_players_move
        
      if not_a_draw? == true

        find_match_winner

        add_point_to_winner
        announce_match_winner

      else
        print "That was a draw. Let's play again. "
      end

      if player_1_wins? == true
        puts "Player 1 wins!"

      elsif player_2_wins? == true
        puts "Player 2 wins!"
      end
    end
  end


end