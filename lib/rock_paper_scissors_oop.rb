 #- player one move
 #- player two move 
 #- games won
 #- games to play

 #asks for players moves
 #games won will change
 #games played will change

class Game
  #Gets the amount of games the player would like to play.
  #
  #num - The Integer of the amount of games the computer will play.
  #
  #returns an Integer stating how many games the player would like to play
  def amount_of_games_to_play 
    puts "\nLet's play a set of paper-rock-scissors!\n\nGive me an odd number please. Best of 3, 5, 7... It's your choice." 
    gets.chomp.to_i
  end

  #Gets player one's move.
  #
  #str - Get the String that identifies player ones move
  #
  #returns a String stating the player one's move.
  def getting_player1_move
    puts "\nPlayer one it's your turn."
    gets.chomp.downcase
  end

  #Gets players two's move
  #
  #str - gets the String that identifies second players move.
  #
  #returns a String stating the second player's move.
  def getting_player2_move
    puts "\nOkay! Player two it's your turn."
    gets.chomp.downcase
  end


  #Plays a game of rock-paper-scissors.
  #
  #str, str - compares two Strings to determine a winner of a game of paper-rock-scissors
  #
  #returns an Integer
  def prs_game
    if (@player1_move == "rock" && @player2_move == "scissors")
      return 1
    elsif (@player1_move == "scissors" && @player2_move == "paper")
      return 1
    elsif (@player1_move == "paper" && @player2_move == "rock")
      return 1
    elsif (@player2_move == "rock" && @player1_move == "scissors")
      return 2
    elsif (@player2_move == "scissors" && @player1_move == "paper")
      return 2
    elsif (@player2_move == "paper" && @player1_move == "rock")
      return 2
    else 
      return nil
    end
  end

  #lets the players know who won an individual game within the set.
  #
  #num - takes an Integer as the winning result of a game of paper-rock-scissors and notifies the player of their win.
  #
  #returns a String
  def individual_game_winner
    if @result == 1
      return "\nPlayer one wins!"
    elsif @result == 2
      return  "\nPlayer two wins!"
    else @result == nil
      return "\nIt's a tie!"
    end
  end

  #tallies each player's games won
  #
  #num - 
  #
  #returns an Integer increasing the w
  #def winner_count(result, player_one_wins, player_two_wins)
  # if result == 1
  #    player_one_wins += 1
  #  elsif result == 2
  #    player_two_wins += 1
  #  else result == nil
  #    games_played -= 1
  #  end
  #end

  #declares the winner of the set
  #
  #num - two Integers
  #
  #returns a String letting the players know who has won the set of paper-rock-scissors.
  def set_results_winner(player_one_wins, player_two_wins)
    if player_one_wins > player_two_wins
      return "\nPlayers one is the is the winner of the set!"
    else
      return "\nPlayer two is the winner of the set!"
    end 
  end 

  #should I tomdoc this?
  def run_game
    games_to_play = amount_of_games_to_play
    player_one_wins = 0
    player_two_wins = 0
    games_played = 0

    
    while games_played < games_to_play 
      
      @player1_move = getting_player1_move
      @player2_move = getting_player2_move
      prs_game
      @result = prs_game
      puts individual_game_winner
      #winner_count(result, player_one_wins, player_two_wins)
      if @result == 1 
       player_one_wins += 1
      elsif @result == 2  
        player_two_wins += 1
      else @result == nil  
        games_played -= 1
      end
      
      games_played += 1
    end
    
    puts set_results_winner(player_one_wins, player_two_wins)
  end
end



