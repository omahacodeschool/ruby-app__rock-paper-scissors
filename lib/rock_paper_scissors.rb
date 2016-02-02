#Rock Paper Scissors Game
##Methods are Defined Here


#Gets player1's name

#Returns player1's name as String.

def player1_name
  puts "Player 1, what is your name?"
  return gets.chomp
end

#Gets player2's name

#Returns player2's name as String.

def player2_name
  puts "Player 2, what is your name?"
  return gets.chomp
end

def games_until_victory
  puts "How many games till victory?"
  return gets.chomp.to_i
end

#Requests rock, paper, or scissors from player.

#Requires player to enter rock, paper, or scissors. Returns player's choice.

#Returns String of the player's weapon of choice.
def player1_weapon
    weapon = gets.chomp.downcase
    until weapon == "rock" || weapon == "paper" || weapon == "scissors" 
        puts "Please chose rock paper or scissors."
        weapon = gets.chomp.downcase
        if weapon == "rock" || weapon == "paper" || weapon == "scissors"  
        end
    end
    return weapon
end
#Requests rock, paper, or scissors from player.

#Requires player to enter rock, paper, or scissors. Returns player's choice.

#Returns String of the player's weapon of choice.
def player2_weapon
    weapon = gets.chomp.downcase
    until weapon == "rock" || weapon == "paper" || weapon == "scissors" 
        puts "Please chose rock paper or scissors."
        weapon = gets.chomp.downcase
        if weapon == "rock" || weapon == "paper" || weapon == "scissors"  
        end
    end
    return weapon
end

#Outlines all potential conditions for victory.

#weapon_1 & weapon_2 are the results of player1_weapon & 
#player2_weapon methods.

#Examples:

#weapon_1 == 'rock' and weapon_2 == 'scissors'
# => player1

#Returns Integer 1 if player1 wins and Integer 2 if player2 wins.
#Also returns nil if there is a tie.

def victory_conditions(weapon_1, weapon_2)
  if weapon_1 == "rock" && weapon_2 == "scissors"
    return 1
  elsif weapon_1 == "paper" && weapon_2 == "rock"
    return 1
  elsif weapon_1 == "scissors" && weapon_2 == "paper"
    return 1
  elsif weapon_2 == "rock" && weapon_1 == "scissors"
    return 2
  elsif weapon_2 == "paper" && weapon_1 == "rock"
    return 2
  elsif weapon_2 == "scissors" && weapon_1 == "paper"
    return 2
  else
    return nil
  end
end

#Interprets victory_conditions method

#victory_conditions - result of the victory_conditions method

#Returns the winning player as a String.
def determine_victor(victory_conditions)
  if victory_conditions == 1
    winner = "Player1"
  elsif victory_conditions == 2
    winner = "Player2"
  end
  return winner
end 










