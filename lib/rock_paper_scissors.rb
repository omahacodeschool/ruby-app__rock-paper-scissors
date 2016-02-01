#Rock Paper Scissors Game
##Methods are Defined Here
def player_choice
    weapon = gets.chomp.downcase
    until weapon == "rock" || weapon == "paper" || weapon == "scissors" 
        puts "Please chose rock paper or scissors."
        weapon = gets.chomp.downcase
        if weapon == "rock" || weapon == "paper" || weapon == "scissors"  
        end
    end
    return weapon
end

def victory_conditions
  if $weapon_1 == "rock" && $weapon_2 == "scissors"
    return $player1
  elsif $weapon_1 == "paper" && $weapon_2 == "rock"
    return $player1
  elsif $weapon_1 == "scissors" && $weapon_2 == "paper"
    return $player1
  elsif $weapon_2 == "rock" && $weapon_1 == "scissors"
    return $player2
  elsif $weapon_2 == "paper" && $weapon_1 == "rock"
    return $player2
  elsif $weapon_2 == "scissors" && $weapon_1 == "paper"
    return $player2
  else
    return nil
  end
end

def increase_victory_count(victory_conditions)
  if victory_conditions == $player1
    $victory_count[$player1]+=1
  elsif victory_conditions == $player2
    $victory_count[$player2]+=1
  else
  end
end

def display_round_winner(victory_conditions)
  if victory_conditions != nil
    puts "#{victory_conditions} wins this round!"
  else 
    puts "Tie game! Play again!"
  end
end

def display_final_winner
  puts "#{$victory_count.max_by{|k,v| v}[0]} is victorious!!!"
end



##Code Starts Here
puts "ROCK PAPER SCISSORS!!!!"
puts "Player 1, what is your name?"
$player1 = gets.chomp
puts "Player 2, what is your name?"
$player2 = gets.chomp
puts "How many games till victory?"
victory_requirement = gets.chomp.to_i
$victory_count = {$player1 => 0, $player2 => 0}




until $victory_count.has_value?(victory_requirement)

  puts "#{$player1} Choose your weapon!"
  $weapon_1 = player_choice
  puts "GOOD CHOICE!"

  puts "#{$player2} Choose your weapon!"
  $weapon_2 = player_choice
  puts "GOOD CHOICE!"

increase_victory_count(victory_conditions)
display_round_winner(victory_conditions)

end
display_final_winner

















