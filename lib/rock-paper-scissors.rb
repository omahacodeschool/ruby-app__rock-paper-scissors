def rock_paper_scissors

  puts "Let's play Rock-Paper-Scissors!"
  
  puts "\nHow many games would you like to play?"
  total_games = gets.chomp.to_i
  
  if total_games == 2
    wins_needed = 1
  else
    wins_needed  = (total_games / 2) + 1
  end

  puts "\nGreat! Best #{wins_needed} out of #{total_games}!"

  which_game = 1
  player1_wins = 0
  player2_wins = 0
  

  while which_game <= total_games
    
    if player1_wins == wins_needed || player2_wins == wins_needed
        break
    end

    puts "--------------------------------------------------------------------"
    puts "\nGame #{which_game}! Commence!\n"
    puts "\nPlayer 1: What's your move?"
    player1_move = gets.chomp.capitalize

    puts "\nOkay! Player1, hand Player 2 the computer and look away."
    puts "\nPlayer 2: What's your move?"
    player2_move = gets.chomp.capitalize

    if player1_move == "Rock"
      if player2_move == "Paper"
        puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
        puts "--------------------------------------------------------------------"
        player2_wins += 1
      elsif player2_move == "Scissors"
        puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
        puts "--------------------------------------------------------------------"
        player1_wins += 1
      else
        puts "\nIt's a Tie! Get Ready for Game #{(which_game + 1)}!"
        puts "--------------------------------------------------------------------"
      end
    elsif player1_move == "Paper"
      if player2_move == "Scissors"
        puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
        puts "--------------------------------------------------------------------"
        player2_wins += 1
      elsif player2_move == "Rock"
        puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
        puts "--------------------------------------------------------------------"
        player1_wins += 1
      else
        puts "\nIt's a Tie! Get Ready for Game #{(which_game + 1)}!"
        puts "--------------------------------------------------------------------"
      end
    elsif player1_move == "Scissors"
      if player2_move == "Rock"
        puts "\n#{player2_move} beats #{player1_move}! Player 2 Wins!"
        puts "--------------------------------------------------------------------"
        player2_wins += 1
      elsif player2_move == "Paper"
        puts "\n#{player1_move} beats #{player2_move}! Player 1 Wins!"
        puts "--------------------------------------------------------------------"
        player1_wins += 1
      else
        puts "\nIt's a Tie! Get Ready for Game #{(which_game + 1)}!"
        puts "--------------------------------------------------------------------"
      end      

    end

    which_game += 1
  end

    if player1_wins > player2_wins
      puts "\nCongratulations Player 1! You take the cake with #{player1_wins} to #{player2_wins}!"
    elsif player2_wins > player1_wins
      puts "\nCongratulations Player 2! You take the cake with #{player2_wins} to #{player1_wins}!"
    else
      puts "\nWhat a grueling battle with no clear winner! Care to settle the score?"
    end

      
end

rock_paper_scissors()