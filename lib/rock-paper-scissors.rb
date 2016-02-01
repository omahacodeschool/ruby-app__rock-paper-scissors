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

# def draw(weapon_p1,weapon_p2)
#   if weapon_p1 == weapon_p2
#     return draw
# end

# def rock_vs_scissors(weapon_p1,weapon_p2)
#   if weapon_p1 == "rock" && weapon_p2 == "scissors"
#     return rock_smashes_scissors
#   elsif weapon_p2 == "rock" && weapon_p1 == "scissors"
#     return rock_smashes_scissors
#   else
#     return nil
#   end
# end

# def paper_vs_rock(weapon_p1,weapon_p2)
#   if weapon_p1 == "paper" && weapon_p2 == "rock"
#     return paper_covers_rock
#   elsif weapon_p2 == "paper" && weapon_p1 == "rock"
#     return paper_covers_rock
#   else
#     return nil
#   end
# end
#
# def scissors_vs_paper(weapon_p1,weapon_p2)
#   if weapon_p1 == "scissors" && weapon_p2 == "paper"
#     return scissors_cut_paper
#   elsif weapon_p2 =="scissors" && weapon_p1 == "paper"
#     return scissors_cut_paper
#   else
#     return nil
#   end
# end

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
game_result = game_winner(p1_weapon, p2_weapon)
display_game_result(game_result)


