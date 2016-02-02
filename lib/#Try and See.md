#Try and See


def player1_chooses_weapon(weapon_1)
  weapon_1 = gets.chomp.downcase
  until weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors" 
  puts "Please chose rock paper or scissors."
  weapon_1 = gets.chomp.downcase
  if weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors"  
    puts "GOOD CHOICE!"
  end



when weapon_2 == "scissors" && weapon_1 == "paper"
puts "#{$player2} wins!"
victory_count[$player2]+=1
puts "Current score is #{victory_count}"



##Possibly begin OOP

def run_game
  player1 = player1_name
  player2 = player2_name
  victory_requirement = games_until_victory
  victory_count = {player1 => 0, player2 => 0}
end

## Tried to refactor  a way in increase score
###Part 1
def player_1_wins(determine_victor)
  if determine_victor == 1
    @victory_count[player1]+=1
  elsif victory_conditions == 2
    @victory_count[player2]+=1
  else
  end
end
###Part 2
def determine_victor(victory_conditions)
  if victory_conditions == 1
    return player1_name
  elsif victory_conditions == 2
    return player2_name
  else
  end
end


#Displays the winner of each round.

#victory_conditions - String of the player's name who won the round.

#Example

#display_round_winner(victory_conditions)
# => Player1 wins this round!

#Displays winner's name or displays that it was a tie game.
def display_round_winner(victory_conditions)
  if victory_conditions != nil
    puts "#{victory_conditions} wins this round!"
  else 
    puts "Tie game! Play again!"
  end
end

#Dispalys final victor, use in OOP
def display_final_winner
  puts "#{victory_count.max_by{|k,v| v}[0]} is victorious!!!"
end





