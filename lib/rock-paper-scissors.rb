class Game
  def initialize
    @which_game = 1
    @player1_wins = 0
    @player2_wins = 0
  end

  def welcome
    puts "Let's play Rock-Paper-Scissors!"
    puts "\nHow many games would you like to play?"
    gets.chomp.to_i
  end

  def get_total_games

    @total_games = welcome
      
    if @total_games == 2
      @wins_needed = 1
    else
      @wins_needed  = (@total_games / 2) + 1
    end

    puts "\nGreat! Best #{@wins_needed} out of #{@total_games}!"
  end

  def game_format_setup
    puts "--------------------------------------------------------------------"
    puts "\nGame #{@which_game}! Commence!\n"
  end  

  def intermediary_message
    puts "\nOkay! Player1, hand Player 2 the computer and look away."
  end

  def get_player1_move
    puts "\nPlayer 1: What's your move?"
    @player1_move = gets.chomp.capitalize
    intermediary_message
  end

  def set_player1_move(x)
    @player1_move = x
  end
     
  def set_player2_move(x)
    @player2_move = x
  end
  
  def get_player2_move
    puts "\nPlayer 2: What's your move?"
    @player2_move = gets.chomp.capitalize
  end

  def determine_game_winner

    if @player1_move == "Rock"
        if @player2_move == "Paper" || @player2_move == "Spock"
          return 2
        elsif @player2_move == "Scissors" || @player2_move == "Lizard"
          return 1
        else
          return nil
        end
      elsif @player1_move == "Paper"
        if @player2_move == "Scissors" || @player2_move == "Lizard"
          return 2
        elsif @player2_move == "Rock" || @player2_move == "Spock"
          return 1
        else
          return nil 
        end
      elsif @player1_move == "Scissors"
        if @player2_move == "Rock" || @player2_move == "Spock"
          return 2
        elsif @player2_move == "Paper" || @player2_move == "Lizard"
          return 1
        else
          return nil
        end
      elsif @player1_move == "Spock"
        if @player2_move == "Paper" || @player2_move == "Lizard"
          return 2
        elsif @player2_move == "Rock" || @player2_move == "Scissors"
          return 1
        else
          return nil
        end  
      elsif @player1_move == "Lizard"
        if @player2_move == "Rock" || @player2_move == "Scissors"
          return 2
        elsif @player2_move == "Spock" || @player2_move == "Paper"
          return 1
        else
          return nil
        end
      end    
  end

  def track_player_wins(num)

    if num == 1
      @player1_wins += 1
    elsif num == 2
      @player2_wins += 1
    end
  end

  def game_outcomes(num)
    if num == 1
      puts "\n#{@player1_move} beats #{@player2_move}! Player 1 Wins!"
      puts "--------------------------------------------------------------------"
    elsif num == 2
      puts "\n#{@player2_move} beats #{@player1_move}! Player 2 Wins!"
      puts "--------------------------------------------------------------------"
    else
      puts "\nIt's a Tie! Get Ready for Game #{(@which_game + 1)}!"
      puts "--------------------------------------------------------------------"
    end
  end


  def display_set_winner
    if @player1_wins > @player2_wins
        puts "\nCongratulations Player 1! You take the cake with a score of #{@player1_wins} to #{@player2_wins}!"
      elsif @player2_wins > @player1_wins
        puts "\nCongratulations Player 2! You take the cake with a score of #{@player2_wins} to #{@player1_wins}!"
      else
        puts "\nWhat a grueling battle with no clear winner! Care to settle the score?"
    end
  end

  def rock_paper_scissors
    get_total_games
    
    while @which_game <= @total_games
      
      if @player1_wins == @wins_needed || @player2_wins == @wins_needed
          break
      end

      game_format_setup  
      get_player1_move
      get_player2_move
      
      winner = determine_game_winner
      track_player_wins(winner)
      game_outcomes(winner)

      @which_game += 1
    end

    display_set_winner       
  end

end
