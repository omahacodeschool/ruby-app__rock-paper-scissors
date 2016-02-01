puts "Enter number of games to play"
rounds = gets.chomp.to_i

$p1_wins = 0
$p2_wins = 0
final_score = {}

while p1_wins + p2_wins != rounds

puts "Choose your weapon, Player 1"
player_1_weapon = gets.chomp.downcase

puts "Choose your weapon, Player 2"
player_2_weapon = gets.chomp.downcase

  if tie_game(player_1_weapon, player_2_weapon) #for some reason says its not defined but it actually is
    puts "Tie game. No points awarded. Stop favoring rock!"

  elsif player_1_weapon == "paper" && player_2_weapon != "scissors"
    puts "Player 1 Wins!"
    p1_wins += 1
    puts "The score is Player 1 with #{p1_wins} points to Player 2 with #{p2_wins} points"

  elsif player_1_weapon == "scissors" && player_2_weapon != "rock"
    puts "Player 1 Wins!"
    p1_wins += 1
    puts "The score is Player 1 with #{p1_wins} points to Player 2 with #{p2_wins} points"

  elsif player_1_weapon == "rock" && player_2_weapon != "paper"
    puts "Player 1 Wins!"
    p1_wins += 1
    puts "The score is Player 1 with #{p1_wins} points to Player 2 with #{p2_wins} points"

  else
    puts "Player 2 Wins!" 
    p2_wins += 1
    puts "The score is Player 1 with #{p1_wins} points to Player 2 with #{p2_wins} points"
  end

end

final_score["Player 1"] = p1_wins
final_score["Player 2"] = p2_wins

if p1_wins == p2_wins
  puts "This was a tie game folks!"

elsif p1_wins != p2_wins
  puts "#{final_score.max_by{|k,v| v}[0]}" + " wins the game!!!"
end






# Defines a tie game
#
# player_1_weapon, player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns True or False
def tie_game(player_1_weapon,player_2_weapon)
  player_1_weapon == player_2_weapon
end



# Defines a win with "paper"
#
# player_1_weapon, player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns True or False
# Increases win counter by 1
def paper_win(player_1_weapon,player_2_weapon)
  player_1_weapon == "paper" && player_2_weapon != "scissors"
  p1_wins += 1
end



# Defines a win with "scissors"
#
# player_1_weapon, player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns True or False
# Increases win counter by 1
def scissors_win(player_1_weapon,player_2_weapon)
  player_1_weapon == "scissors" && player_2_weapon != "rock"
  p1_wins += 1
end



# Defines a win with "rock"
#
# player_1_weapon, player_2_weapon - A string of either "rock","paper", or "scissors"
#
# Returns True or False
# Increases win counter by 1
def rock_win(player_1_weapon,player_2_weapon)
  player_1_weapon == "rock" && player_2_weapon != "paper"
  p1_wins += 1
end



# Defines a tied set
#
#p1_wins,p2_wins - The number of rounds won in a set
#
#Returns True or False
def tie_win(p1_wins,p2_wins)
  p1_wins == p2_wins
end



# Defines a not tied set
#
#p1_wins,p2_wins - The number of rounds won in a set
#
#Returns True or False
def set_winner(p1_wins,p2_wins)
  p1_wins != p2_wins
end