puts "Enter number of games to play"
rounds = gets.chomp.to_i

p1_wins = 0
p2_wins = 0
final_score = {}

while p1_wins + p2_wins != rounds

puts "Choose your weapon, Player 1"
player_1_weapon = gets.chomp.downcase

puts "Choose your weapon, Player 2"
player_2_weapon = gets.chomp.downcase

  if player_1_weapon == player_2_weapon
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
  puts "#{final_score.max_by{|k,v| v}[0].upcase}" + " wins the game!!!"
end


