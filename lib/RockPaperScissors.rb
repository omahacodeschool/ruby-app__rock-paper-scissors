class Game
  
  @potential_plays = Hash["rock",1, "paper",2,"scissors",3]
  @win_counter = Hash["P1",0, "P2",0]

  #main method
  def run_game

    v=establish_v
    @Player1 = player_names(1)
    @Player2 = player_names(2)
    @potential_plays = Hash["rock",1, "paper",2,"scissors",3]
    @win_counter = Hash["P1",0, "P2",0]

  
    until champion(v)==@Player1 || champion(v)==@Player2
      move1, move2 = ask_for_move(1,2)
      move1,move2 = unique_situation(move1,move2)     
      temp_winner = turn_winner(move1,move2)
      congrats_winner(temp_winner)
      track_victory(temp_winner)   
    end 
    congrats_champion(champion(v))   
  end

#ALGORYTHMIC METHODS
  def assign_play_value(play) #algorythmic
    if @potential_plays.has_key?(play) 
    move = @potential_plays[play]
    end
  end
  
  def turn_winner(move1,move2) #algorythmic
    if move1 > move2
      return @Player1
    elsif move2 > move1
      return @Player2
    end
  end

  def unique_situation(move1,move2) 
    if move1==1 && move2==3
        move2 = 0
      end
    if move2==1 && move1==3
        move1 = 0
      end
    return move1,move2
  end
  

  def track_victory(winnerofturn) #algorythmic
    if winnerofturn == @Player1
      @win_counter["P1"] += 1
    elsif winnerofturn == @Player2
      @win_counter["P2"] += 1
    end
  end
  
  def champion(victorycondition) #algorythmic
    if @win_counter["P1"]==victorycondition
      return @Player1
    elsif @win_counter["P2"]==victorycondition
      return @Player2
    else  
      return nil
    end 
  end

  def congrats_champion(champion)
    puts "Congratulations #{champion}! You are the Rock Paper Scissors Champion!"
  end

  
  #UX METHODS:
  def establish_v
    puts "How many games of Rock Paper Scissors would you like to play?"
    v = (gets.to_i/2) + 1
    puts "Okay! You will have to win " + v.to_s + " games to be the CHAMPION!"
    puts
    return v
  end

  def player_names(n)
    puts "Player " + n.to_s + "! What is your name?"
    return gets.chomp
  end

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

  def ask_for_move(a,b)
    puts
    puts @Player1 + "! What is your move?"
    move1 = assign_play_value(gets.chomp.downcase)
      
    puts
    puts @Player2 + ", what is YOUR move?"
    move2 = assign_play_value(gets.chomp.downcase)
    return move1, move2
  end

  def unique_situation(move1,move2) 
    if move1==1 && move2==3
        move2 = 0
      end
    if move2==1 && move1==3
        move1 = 0
      end
    return move1,move2
  end
end

test_game=Game.new
test_game.run_game
