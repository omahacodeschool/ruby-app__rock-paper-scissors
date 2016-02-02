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
# Returns the weapon ("rock"", "paper", or "scissors") of Player 1 as a String
#
def get_player_1_weapon
  puts "Player 1, unleash your weapon:"
  return gets.chomp
end

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
# Returns the weapon ("rock"", "paper", or "scissors") of Player 2 as a String
#
def get_player_2_weapon
  puts "Player 2, unleash your weapon:"
  return gets.chomp
end

# Defines how the game was won
#
# Arguments:
# String - weapon of player 1 ("rock"", "paper", or "scissors")
# String - weapon of player 2 ("rock", "paper", or "scissors")
#
# Examples:
#
# Player 1 weapon is "paper" and player 2 weapon is "rock"
# => 1 (1 will later need to be defined to be equal to "Paper Covers Rock")
#
# Player 1 weapon is "paper" and player 2 weapon is "scissors"
# => 2 (2 will later need to be defined to be equal to "Scissors Cut Paper")
#
# Player 1 weapon is "rock" and player 2 weapon is "scissors"
# => 3 (3 will later need to be defined to be equal to "Rock Smashes Scissors")
#
# Player 1 and Player 2 weapons are the same
# => nil (nil will later need to be inherently defined as a "draw")
#
# Returns an integer value of 0, 1, 2, or 3
#
def how_game_was_won(weapon_p1, weapon_p2)
  if weapon_p1 == "paper" && weapon_p2 == "rock"
    return 1
  elsif weapon_p2 == "paper" && weapon_p1 == "rock"
    return 1
  elsif apple == "scissors" && weapon_p2 == "paper"
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
# Arguments(2)
# String - Player 1 weapon ("rock", "paper", or "scissors")
# String - Player 2 weapon ("rock", "paper", or "scissors")
#
# Examples:
#
# Player 1 weapon is "rock" and Player 2 weapon is "scissors"
# => 1 (will later need to be defined as a Player 1 win)
#
# Player 1 weapon is "rock" and Player 2 weapon is "paper"
# => 2 (will later need to be defined as a Player 2 win)
#
# Player 1 weapon is the same as Player 2 weapon
# => nil (will later need to be inherently defined as a draw)
#
# Returns an integer value of 1, 2, 3 or nil
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
  elsif weapon_p2 == "scissors" && weapon_p2 == "paper"
    return 2
  else
    return nil
  end
end  

# Defines what to display based on how the game was won
#
# Arguments(3)
# Integer - value from how_game_was_won method (0, 1, 2, or 3)
# String - Player 1 weapon ("rock", "paper", or "scissors")
# String - Player 2 weapon ("rock", "paper", or "scissors")
#
# Examples:
#
# Integer value from how_game_was_won method == 1
# => "Paper Covers Rock" (both String arguments are disregarded)
#
# Integer value from how_game_was_won method == 2
# => "Scissors Cut Paper" (both String arguments are disregarded)
#
# Integer value from how_game_was_won method == 3
# => "Rock Smashes Scissors" (both String arguments are disregarded)
#
# Integer value from how_game_was_won method == 4
# => "Player 1 weapon equals Player 2 weapon" (String arguments are used)
#
# Returns a statement on how the game was won
#
def display_how_game_won(won, weapon_p1, weapon_p2)
  if won == 1
    puts "Paper Covers Rock"
  elsif won == 2
    puts "Scissors Cut Paper"
  elsif won == 3
    puts "Rock Smashes Scissors"
  else won == 0
    puts "#{weapon_p1} equals #{weapon_p2}"
  end
end
    
# Defines what to display based on which player won the game
#
# Arguments
# Integer - value from game_winner method (1, 2, 3, or nil)  
#
# Examples:
#
# Integer value from game_winner method == 1
# => "Player 1 wins!"
#
# Integer value from game_winner method == 2
# => "Player 2 wins!"  
#
# Nil value from game_winner method
# => "It's a draw!"
#
# Returns a statement on which player won the game
#
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

