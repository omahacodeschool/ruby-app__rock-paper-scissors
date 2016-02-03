class Game

  #run_game is the actual RPS game
  #plays game, declares winner, keeps track of victories
  # => a message congratulating the RPS Champion
  def run_game
    setup
    v=establish_v
    @Player1 = player_names(1)
    @Player2 = player_names(2)
    

    until champion(v) != nil
      move1, move2 = ask_for_move
      move1,move2 = unique_situation(move1,move2)     
      temp_winner = turn_winner(move1,move2)
      congrats_winner(temp_winner)
      track_victory(temp_winner)   
    end 
    congrats_champion(champion(v))   
  end

  #ALGORYTHMIC METHODS

  #setup establishes variables required for the game
  # => hash of moves/values and a victory tracker

  def setup
    @potential_plays = Hash["rock",1, "paper",2,"scissors",3]
    @win_counter = Hash["P1",0, "P2",0]
  end

  def player1value
    return @Player1
  end

  def set_player1value(banana)
    @Player1 = banana
  end

  #assign_play_value assigns value to a weapon
  # play = the player's chosen weapon (rock, paper, or scissors)
  # => the numeric value of a chosen move (1,2,or 3)
  def assign_play_value(play)
    if @potential_plays.has_key?(play) 
    move = @potential_plays[play]
    end
  end
  
  #unique_situation checks for rock vs scissors
  # move1, move2 are the NUMERIC players moves (R,P,S)
  # => move1, move2 (either in original states or altered for exception)
  def unique_situation(move1,move2) 
    if move1==1 && move2==3
        move2 = 0
      end
    if move2==1 && move1==3
        move1 = 0
      end
    return move1,move2
  end

  ##FUTURE turn_winner & unique_situation--can be combined? 

  # turn_winner determines who won THAT GAME
  # move1, move2 are the players NUMERIC moves (R,P,S)
  #=>winner of THAT game
  def turn_winner(move1,move2) 
    if move1 > move2
      return @Player1
    elsif move2 > move1
      return @Player2
    end
  end

  #track_victory allows for "best of" games
  #winnerofturn is whoever won the last game/match
  #=>increases the @win_counter of the match winner
  def track_victory(winnerofturn) #algorythmic
    if winnerofturn == @Player1
      @win_counter["P1"] += 1
    elsif winnerofturn == @Player2
      @win_counter["P2"] += 1
    end
  end
  
  #champion finds the ultimate winner
  #victorycondition is the number of games to win (majority)
  #=> winner of all games ie the CHAMPION!
  def champion(victorycondition) #algorythmic
    if @win_counter["P1"]==victorycondition
      return @Player1
    elsif @win_counter["P2"]==victorycondition
      return @Player2
    else  
      return nil
    end 
  end

  #congrats_champion lets players know the ultimate winner
  #champion = output of champion, the player w win majority
  #=> victory notification
  def congrats_champion(champion)
    puts "Congratulations #{champion}! You are the Rock Paper Scissors Champion!"
  end

  
  #UX METHODS:

  #establish_v sets the victory condition
  # gets the # of games they wish to play, calculates the majority
  # => v, or the number of game wins needed to be final victor
  ##FUTURE this could be split into an agorythmic AND ux method
  def establish_v
    puts "How many games of Rock Paper Scissors would you like to play?"
    v = (gets.to_i/2) + 1
    puts "Okay! You will have to win " + v.to_s + " games to be the CHAMPION!"
    puts
    return v
  end

  #player_names names the players
  #n = number of player assigning (1 or 2)
  # => name
  def player_names(n)
    puts "Player " + n.to_s + "! What is your name?"
    return gets.chomp
  end

  #congrats_winner informs players who won match
  #turn_winner is the winner of the last match
  # => message of who won
  def congrats_winner(turn_winner) #UX
    if turn_winner == nil
      puts
      sleep 1
      puts "\nIt's a tie! EVERYBODY WINS!\n" 
      sleep 1 
    else
      puts
      sleep 1
      puts "You win that round, #{turn_winner}!"
      sleep 1
    end
  end

  #ask_for_move asks for weapons of choice from players
  #=>move1, move2 (the numeric value of their weapons)
  def ask_for_move
    puts
    puts @Player1 + "! What is your move?"
    move1 = assign_play_value(gets.chomp.downcase)
    puts
    puts @Player2 + ", what is YOUR move?"
    move2 = assign_play_value(gets.chomp.downcase)
    return move1, move2
  end

  #congrats_champion lets players know the ultimate winner
  #champion = output of champion, the player w win majority
  #=> victory notification
  def congrats_champion(champion)
    puts "Congratulations #{champion}! You are the Rock Paper Scissors Champion!"
  end
end

#test_game=Game.new
#test_game.run_game
