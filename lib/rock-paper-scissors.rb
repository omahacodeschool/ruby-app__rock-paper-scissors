# Get the weapon of player 1
#
# No arguments for this method
#
# Example:
#
# "Player 1, unleash your weapon:"
# => Player 1 types "rock" and hits enter
# gets.chomp => "rock"
#
# Returns a String ("rock"", "paper", or "scissors")
#
# def get_player_1_weapon
#   puts "Player 1, unleash your weapon:"
#   return gets.chomp
# end

# Get the weapon of Player 2
#
# No arguments for this method
#
# Example:
#
# "Player 2, unleash your weapon"
# => Player 2 types "paper" and hits enter
# gets.chomp => "paper"
#
# Returns a String ("rock"", "paper", or "scissors")
#
# def get_player_2_weapon
#   puts "Player 2, unleash your weapon:"
#   return gets.chomp
# end

# Defines how the game was won
#
# weapon_p1 - String that is Player 1 weapon ("rock", "paper", or "scissors")
# weapon_p2 - String that is Player 2 weapon ("rock", "paper", or "scissors")
#
# Examples:
#
# how_game_was_won("paper", "rock")
# => 1
#
# how_game_was_won("scissors", "paper")
# => 2
#
# how_game_was_won("rock", "scissors")
# => 3
#
# how_game_was_won("rock", "rock")
# => 0
#
# Returns an Integer value of 0, 1, 2, or 3
#
def how_game_was_won(weapon_p1, weapon_p2)
  if weapon_p1 == "paper" && weapon_p2 == "rock"
    return 1
  elsif weapon_p2 == "paper" && weapon_p1 == "rock"
    return 1
  elsif weapon_p1 == "scissors" && weapon_p2 == "paper"
    return 2
  elsif weapon_p2 == "scissors" && weapon_p1 == "paper"
    return 2
  elsif weapon_p1 == "rock" && weapon_p2 == "scissors"
    return 3
  elsif weapon_p2 == "rock" && weapon_p1 == "scissors"
    return 3
  else
    return 0
  end 
end

# Defines which player won the game
#
# weapon_p1 - String that is Player 1 weapon ("rock", "paper", or "scissors")
# weapon_p2 - String that is Player 2 weapon ("rock", "paper", or "scissors")
#
# Examples:
#
# game_winner("rock", "scissors")
# => 1
#
# game_winner("scissors", "rock")
# => 2
#
# game_winner("paper", "paper")
# => nil
#
# Returns an Integer value of 1, 2, 3 or nil
#
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
  elsif weapon_p2 == "scissors" && weapon_p1 == "paper"
    return 2
  else
    return nil
  end
end  

# Defines what to display based on how the game was won
#
# won - an Integer value from how_game_was_won method (0, 1, 2, or 3)
# weapon_p1 - String that is Player 1 weapon ("rock", "paper", or "scissors")
# weapon_p2 - String that is Player 2 weapon ("rock", "paper", or "scissors")
#
# Examples:
#
# display_how_game_won(1, "rock", "paper")
# => "Paper Covers Rock" (both String arguments are not needed)
#
# display_how_game_won(2, "paper", "scissors")
# => "Scissors Cut Paper" (both String arguments are not needed)
#
# display_how_game_won(3, "rock", "scissors")
# => "Rock Smashes Scissors" (both String arguments are disregarded)
#
# display_how_game_won(0, "rock", "rock")
# => "rock equals rock"
#
# Returns a String describing how the game was won or drawn
#
def display_how_game_won(won, weapon_p1, weapon_p2)
  if won == 1
    return "Paper Covers Rock"
  elsif won == 2
    return "Scissors Cut Paper"
  elsif won == 3
    return "Rock Smashes Scissors"
  else won == 0
    return "#{weapon_p1} equals #{weapon_p2}"
  end
end
    
# Defines what to display based on which player won the game
#
# winner - Integer value (1, 2, or nil) from game_winner method 
#
# Examples:
#
# display_game_result(1)
# => "Player 1 wins!"
#
# display_game_result(2)
# => "Player 2 wins!"  
#
# display_game_result(nil)
# => "It's a draw!"
#
# Returns a String defining which player won the game, or if the game was drawn
#
def display_game_result(winner)
  if winner == 1
    return "Player 1 wins!"
  elsif winner == 2
    return "Player 2 wins!"
  else
    return "It's a draw!"
  end
end
      

# For testing, tests will define weapons  
# p1_weapon = get_player_1_weapon
# p2_weapon = get_player_2_weapon

# win_description = how_game_was_won(p1_weapon, p2_weapon)
# game_result = game_winner(p1_weapon, p2_weapon)

# display_how_game_won(win_description, p1_weapon, p2_weapon)
# display_game_result(game_result)




