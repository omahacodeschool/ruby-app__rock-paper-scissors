#Rock Paper Scissors Game
##Methods are Defined Here

class Game 
  def run_game
    puts_name_of_game

    @player1 = player1_name
    @player2 = player2_name

    ask_for_games

    @games = games_until_victory

    set_player1_weapon(get_player1_weapon)
    set_player2_weapon(get_player2_weapon)

    @current_score = {@player1 => 0, @player2 => 0}

    determine_victor(victory_conditions)

    incremeant_score

    puts_match_winner

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

  def set_player2_weapon(x)
    @weapon_2 = x
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

  #Returns the winning player's name as a String.
  def determine_victor(x)
    x = victory_conditions
    if x == 1
      @match_winner = @player1
    elsif x == 2
      @match_winner = @player2
    else
      @match_winner = nil
    end
  end

  # Should return the name of the winning player
  def incremeant_score
    until @current_score.has_value?(@games) 
      if @match_winner != nil
        @current_score["#{@match_winner}"] += 1
      else
      end
    end
  end




  #Just puts that there is a tie  
  def puts_tie_game
    puts "No winner! Play again!"
  end

  def puts_match_winner
    puts "#{@match_winner} wins this round!"
  end

  def puts_champion
    puts "#{@current_score.max_by{|k,v| v}[0]} is victorious!!!"
  end

  def puts_name_of_game
    puts "ROCK PAPER SCISSORS!!!!"
  end

  def ask_for_games
    puts "How many games till victory?"
  end
end



