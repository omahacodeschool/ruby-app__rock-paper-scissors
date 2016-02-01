#This is a little Rock-Paper-Scissors game.

def winner?(player1_weapon,player2_weapon)
  if player1_weapon == "rock" && player2_weapon == "scissors"
    return "player1"
  elsif player1_weapon == "paper" && player2_weapon == "rock"
    return "player1"
  elsif player1_weapon == "scissors" && player2_weapon == "paper"
    return "player1"
  elsif player2_weapon == "rock" && player1_weapon == "scissors"
    return "player2"
  elsif player2_weapon == "paper" && player1_weapon == "rock"
    return "player2"
  elsif player2_weapon == "scissors" && player1_weapon == "paper"
    return "player2"
  elsif player1_weapon == player2_weapon
    return nil
  end
end

def display_winner(winner)
  if winner == nil
    puts "No winner! Tie Game!"
  else
    puts "#{winner.capitalize} wins the day!"
  end
end

def overall_winner?(p1_wins,p2_wins)
  if p1_wins > p2_wins
    return "player1"
  elsif p2_wins > p1_wins
    return "player2"
  else
    return nil
  end
end

def rock_paper_scissors

  i = 0
  p1_wins = 0
  p2_wins = 0

  puts "Let's play Rock-Paper-Scissors!"

  puts "\nHow many games do you have to win to win a set?"
  best = gets.chomp.to_i
  out_of = best + best - 1
  puts "\nBest #{best} out of #{out_of} it is!"

  while i < out_of
    puts "\nPlayer 1, choose your weapon!"
    player1_weapon = gets.chomp.downcase
    puts "Player 1 uses #{player1_weapon}!"

    puts "\nOkay, Player 1, hand the computer to Player 2 and look away."

    puts "\nPlayer 2, choose your weapon!"
    player2_weapon = gets.chomp.downcase
    puts "Player 2 uses #{player2_weapon}!"

    winner = winner?(player1_weapon,player2_weapon)
    display_winner(winner)
    
    i += 1
    
    if winner == "player1"
      p1_wins += 1
    elsif winner == "player2"
      p2_wins += 1
    end
  end
  overall_winner = overall_winner?(p1_wins,p2_wins)
  display_winner(overall_winner)
end
rock_paper_scissors

