def get_player_1_weapon
  puts "Player 1, unleash your weapon:"
  return gets.chomp
end

def get_player_2_weapon
  puts "Player 2, unleash your weapon:"
  return gets.chomp
end


def how_game_was_won(apple, orange)
  if apple == "paper" && orange == "rock"
    return 1
  elsif orange == "paper" && apple == "rock"
    return 1
  elsif apple == "scissors" && orange == "paper"
    return 2
  elsif orange == "scissors" && apple == "paper"
    return 2
  elsif apple == "rock" && orange == "scissors"
    return 3
  elsif orange == "rock" && apple == "scissors"
    return 3
  else
    return 0
  end 
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

def display_how_game_won(x_ray, weapon_p1, weapon_p2)
  if x_ray == 1
    puts "Paper Covers Rock"
  elsif x_ray == 2
    puts "Scissors Cut Paper"
  elsif x_ray == 3
    puts "Rock Smashes Scissors"
  else x_ray == 0
    puts "#{weapon_p1} equals #{weapon_p2}"
  end
end
    
def display_game_result(winner)
  if winner == 1
    puts "Player 1 wins!"
  elsif winner == 2
    puts "Player 2 wins!"
  else
    puts "It's a draw!"
  end
end
      

p1_weapon = get_player_1_weapon
p2_weapon = get_player_2_weapon
win_description = how_game_was_won(p1_weapon, p2_weapon)
game_result = game_winner(p1_weapon, p2_weapon)

display_how_game_won(win_description, p1_weapon, p2_weapon)

display_game_result(game_result)

