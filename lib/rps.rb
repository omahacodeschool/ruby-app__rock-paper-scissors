##Code Starts Here
require_relative "rock_paper_scissors"

puts "ROCK PAPER SCISSORS!!!!"

player1 = player1_name
player2 = player2_name
games = games_until_victory
current_score = {"Player1" => 0, "Player2" => 0}


until current_score.has_value?(games)
  puts "#{player1} Choose your weapon!"
  weapon_1 = player1_weapon
  

  puts "#{player2} Choose your weapon!"
  weapon_2 = player2_weapon
  
  if weapon_1 != weapon_2
    winner = victory_conditions(weapon_1, weapon_2)
    match_victor = determine_victor(winner)
    puts "#{match_victor} wins this round!"
    current_score["#{match_victor}"] += 1
  else
    puts "No winner! Play again!"
  end

end
puts "#{current_score.max_by{|k,v| v}[0]} is victorious!!!"
