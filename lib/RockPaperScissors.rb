class Game
  
  @potential_plays = Hash["rock",1, "paper",2,"scissors",3]
  @win_counter = Hash["P1",0, "P2",0]

#ALGORYTHMIC METHODS
  def assign_play_value(play) #algorythmic
    if @potential_plays.has_key?(play) 
    move = @potential_plays[play]
    end
  end
  
  def turn_winner(move1,move2) #algorythmic
    if move1 > move2
      return Player1
    elsif move2 > move1
      return Player2
    end
  end
  

  def track_victory(winnerofturn) #algorythmic
    if winnerofturn == Player1
      @win_counter["P1"] += 1
    elsif winnerofturn == Player2
      @win_counter["P2"] += 1
    end
  end
  
  
  def champion(victorycondition) #algorythmic
    if @win_counter["P1"]==victorycondition
      return Player1
    elsif @win_counter["P2"]==victorycondition
      return Player2
    else  
      return nil
    end 
  end
  
  #UX METHODS:
  def congrats_winner(turn_winner) #UX
    if turn_winner == nil
      puts "\nIt's a tie! EVERYBODY WINS!\n"  
    else
      puts "You win that round, #{turn_winner}!"
    end
  end

  def run_game
    puts "How many games of Rock Paper Scissors would you like to play?"
    @v = (gets.to_i/2) + 1 #v stands for victories
  
    puts "\nOkay! You will have to win " + @v.to_s + " games to be the CHAMPION!\n "
  
    puts "Player 1! What is your name?"
    Player1 = gets.chomp
  
    puts "Player 2! What is your name?"
    Player2 = gets.chomp
  
    until champion(@v) != nil
      
      puts 
      puts Player1 + "! What is your move?"
      move1 = assign_play_value(gets.chomp.downcase)
      
      puts
      puts Player2 + ", what is YOUR move?"
      move2 = assign_play_value(gets.chomp.downcase)
      
      sleep 1
      
      if move1==1 && move2==3
        move2 = 0
      end
      
      if move2==1 && move1==3
        move1 = 0
      end
    
      temp = turn_winner(move1,move2)
      congrats_winner(temp)
      track_victory(temp)
    
    
      
      sleep 1
    end 
  
      puts "Congratulations #{champion(v)}! You are the Rock Paper Scissors Champion!"
  end

end