#Rock Paper Scissors Game
##Methods are Defined Here

class Game 
  def run_game
    puts_name_of_game

    @player1 = player1_name
    @player2 = player2_name

    ask_for_games
    @games = games_until_victory
    @current_score = {@player1 => 0, @player2 => 0}

    until @current_score.has_value?(@games)
 
      puts_ask_for_weapon1
      set_player1_weapon(get_player1_weapon)
      puts_ask_for_weapon2
      set_player2_weapon(get_player2_weapon)

      determine_victor(victory_conditions)

      increment_score

      if @game_winner == nil
        puts_tie_game
      else
        puts_match_winner
      end
      show_score
    end

      puts_champion
  end

  #Gets player1's name

  #Returns player1's name as String.
  def player1_name
    puts "Player 1, what is your name?"
    return gets.chomp
  end

  #Gets player2's name

  #Returns player2's name as String.
  def player2_name
    puts "Player 2, what is your name?"
    return gets.chomp
  end

  def games_until_victory
    return gets.chomp.to_i
  end

  #Requests rock, paper, or scissors from player.

  #Requires player to enter rock, paper, or scissors. Returns player's choice.

  #Returns String of the player's weapon of choice.
  def get_player1_weapon
    weapon_1 = gets.chomp.downcase
    until weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors"
      puts "Please chose rock paper or scissors."
      weapon_1 = gets.chomp.downcase
      if weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors"
      end
    end
    return weapon_1
  end
  #Requests rock, paper, or scissors from player.

  #Requires player to enter rock, paper, or scissors. Returns player's choice.

  #Returns String of the player's weapon of choice.
  def get_player2_weapon
    weapon_2 = gets.chomp.downcase
    until weapon_2 == "rock" || weapon_2 == "paper" || weapon_2 == "scissors"
      puts "Please chose rock paper or scissors."
      weapon_2 = gets.chomp.downcase
      if weapon_2 == "rock" || weapon_2 == "paper" || weapon_2 == "scissors"
      end
    end
    return weapon_2
  end

  def set_player1_weapon(x)
    @weapon_1 = x
  end

  def set_player2_weapon(y)
    @weapon_2 = y
  end


  #Outlines all potential conditions for victory.

  #weapon_1 & weapon_2 are the results of player1_weapon & 
  #player2_weapon methods.

  #Examples:

  #weapon_1 == 'rock' and weapon_2 == 'scissors'
  # => player1

  #Returns Integer 1 if player1 wins and Integer 2 if player2 wins.
  #Also returns nil if there is a tie.

  def victory_conditions
    if @weapon_1 == "rock" && @weapon_2 == "scissors"
      return 1
    elsif @weapon_1 == "paper" && @weapon_2 == "rock"
      return 1
    elsif @weapon_1 == "scissors" && @weapon_2 == "paper"
      return 1
    elsif @weapon_2 == "rock" && @weapon_1 == "scissors"
      return 2
    elsif @weapon_2 == "paper" && @weapon_1 == "rock"
      return 2
    elsif @weapon_2 == "scissors" && @weapon_1 == "paper"
      return 2
    else
      return nil
    end
  end

  #Returns the winning player's name.

  #x - is the results (1, 2, or nil) of victory_conditions method

  #Returns String of winning player's name, or nil.
  def determine_victor(x)
    if x == 1
      @game_winner = @player1
    elsif x == 2
      @game_winner = @player2
    else
      @game_winner = nil
    end
  end

  #Meant to increase the winning players score by 1

  #Example: @current_score{@player1 =>0, @player2 => 0}
  #Player1 wins a match.  Then @current_score{@player1 => 1, @player2 => 0}

  #Return new @current_score hash. (NOTE: this is where I'm having trouble)
  def increment_score
    if @game_winner != nil
      @current_score["#{@game_winner}"] += 1
    else
    end
  end

  def show_score
    @current_score.each{|key,value| puts "#{key} has won #{value} games so far."}
  end






  #Puts that there is a tie.  
  def puts_tie_game
    puts "No winner! Play again!"
  end
  #Puts winner of the match.  
  def puts_match_winner
    puts "#{@game_winner} wins this round!"
  end
  #Puts winner at the end of the game.  
  def puts_champion
    puts "#{@current_score.max_by{|k,v| v}[0]} is victorious!!!"
  end
  #Puts the name of the game, symbolise the start of the game.  
  def puts_name_of_game
    puts "ROCK PAPER SCISSORS!!!!"
  end
  #Asks the players for the number of games they want to play.  
  def ask_for_games
    puts "How many games till victory?"
  end
  #Asks player1 for thier weapon of choice.  
  def puts_ask_for_weapon1
    puts "#{@player1}, chose your weapon"
  end
  #Asks player2 for thier weapon of choice. 
  def puts_ask_for_weapon2
    puts "#{@player2}, chose your weapon"
  end
end



