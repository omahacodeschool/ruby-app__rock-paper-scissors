#This is a little Rock-Paper-Scissors game.

def how_many_games
  puts "\nHow many games do you have to win to win a set?"
  return gets.chomp.to_i
end


def get_player_one_weapon
  puts "\nPlayer 1, choose your weapon!"
  return gets.chomp.downcase
end

def get_player_two_weapon
  puts "\nPlayer 2, choose your weapon!"
  return gets.chomp.downcase
end

def winner?(player1_weapon,player2_weapon)
  if player1_weapon == "rock" && player2_weapon == "scissors"
    return 1
  elsif player1_weapon == "paper" && player2_weapon == "rock"
    return 1
  elsif player1_weapon == "scissors" && player2_weapon == "paper"
    return 1
  elsif player2_weapon == "rock" && player1_weapon == "scissors"
    return 2
  elsif player2_weapon == "paper" && player1_weapon == "rock"
    return 2
  elsif player2_weapon == "scissors" && player1_weapon == "paper"
    return 2
  elsif player1_weapon == player2_weapon
    return nil
  end
end

def display_winner(winner)
  if winner == nil
    puts "No winner! Tie Game!"
  else
    puts "Player #{winner} wins the day!"
  end
end

def overall_winner?(p1_wins,p2_wins)
  if p1_wins > p2_wins
    return 1
  elsif p2_wins > p1_wins
    return 2
  else
    return nil
  end
end

def one_round
  player1_weapon = get_player_one_weapon
  player2_weapon = get_player_two_weapon
  return winner?(player1_weapon,player2_weapon)
end

#1. Start game
#2. Ask how many games
#3. Single game
#4. Decide winner
#5. Declare winner
#6. Multiple games
#7. Track wins
#8. Decide overall winner
#9. Declare overall winner