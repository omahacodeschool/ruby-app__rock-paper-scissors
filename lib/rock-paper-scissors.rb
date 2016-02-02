def get_player_1_weapon
  puts "Player 1, unleash your weapon:"
  return gets.chomp
end

def get_player_2_weapon
  puts "Player 2, unleash your weapon:"
  return gets.chomp
end

def game_winner(weapon_p1, weapon_p2)
  if weapon_p1 == "rock" && weapon_p2 == "scissors"
    return 1
  elsif weapon_p1 == "paper" && weapon_p2 == "rock"
    return 1
  elsif weapon_p1 == "scissors" && weapon_p2 == "paper"
    return 1
  elsif weapon_p2 == "rock" && weapon_p1 == "scissors"
    return 2
  elsif weapon_p2 == "paper" && weapon_p1 == "rock"
    return 2
  elsif weapon_p2 == "scissors" && weapon_p2 == "paper"
    return 2
  else
    return nil
  end
end  

def how_won(weapon_p1,weapon_p2)
  if weapon_p1 == "rock" && weapon_p2 == "scissors"
    return rock_smashes_scissors
  elsif weapon_p2 == "rock" && weapon_p1 == "scissors"
    return rock_smashes_scissors
  elsif weapon_p1 == "paper" && weapon_p2 == "rock"
    return paper_covers_rock
  elsif weapon_p2 == "paper" && weapon_p1 == "rock"
    return paper_covers_rock
  elsif weapon_p1 == "scissors" && weapon_p2 == "paper"
    return scissors_cut_paper
  elsif weapon_p2 =="scissors" && weapon_p1 == "paper"
    return scissors_cut_paper 
  else weapon_p1 == weapon_p2
    return draw
  end
end

def display_game_result(winner)
  if how_won == rock_smashes_scissors
    puts "Rock Smashes Scissors"
  elsif how_won == paper_covers_rock
    puts "Paper Covers Rock"
  elsif how_won == scissors_cut_paper
    puts "Scissors Cut Paper"
  else how_won == draw
    puts "#{p1_weapon} equals #{p2_weapon}"
  end

  if winner == 1
    puts "Player 1 Wins!"
  elsif winner == 2
    puts "Player 2 Wins!"
  else
    puts "It's a Draw!"
  end

end
      

p1_weapon = get_player_1_weapon
p2_weapon = get_player_2_weapon

game_result = game_winner(p1_weapon, p2_weapon)
display_game_result(game_result)


