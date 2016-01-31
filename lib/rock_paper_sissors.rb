
def paper_rock_scissors
  puts "\nLets play a set of paper-rock-scissors."

  puts "\nGive me an odd number. Best of the 3, 5, 7... It's your choice." 
  
  amount_of_games_to_play = gets.chomp.to_i

  player_one_wins = 0
  player_two_wins = 0
  games_played = 0

  while games_played < amount_of_games_to_play 
    
    puts "\nPlayer one your turn."
    str1 = gets.chomp.downcase
    
    puts "\nOkay! Player two your turn."
    str2 = gets.chomp.downcase
    
    if str1 == "scissors" 
      if str2 == "paper"
        puts "\nPlayer one wins!"
        player_one_wins += 1
      elsif str2 == "scissors"
        puts "\nIt's a tie!" 
        games_played -= 1
      else str2 == "rock"
        puts "\nPlayer two wins!"
        player_two_wins += 1
      end
    end

    if str1 == "paper"
      if str2 == "rock"
        puts "\nPlayer one wins!"
        player_one_wins += 1
      elsif str2 == "paper"
        puts "\nIt's a tie!"
        games_played -= 1
      else str2 == "scissors"
        puts "\nPlayer two wins!"
        player_two_wins += 1
      end 
    end

    if str1 == "rock"
      if str2 == "scissors"
        puts "\nPlayer one wins!"
        player_one_wins += 1
      elsif str2 == "rock"
        puts "\nIt's a tie!"
        games_played -= 1
      else str2 == "paper"
        puts "\nPlayer two wins!"
        player_two_wins += 1
      end 
    end
    games_played += 1
  end

  if player_one_wins > player_two_wins
    puts "\nPlayers one is the winner!"
  else
    puts "\nPlayer two is the winner!"
  end
end


puts paper_rock_scissors