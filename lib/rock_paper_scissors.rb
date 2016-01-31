#Rock Paper Scissors Game

puts "ROCK PAPER SCISSORS!!!!"
puts "Player 1, what is your name?"
player1 = gets.chomp
puts "Player 2, what is your name?"
player2 = gets.chomp
puts "How many games till victory?"
victory_requirement = gets.chomp.to_i
victory_count = {player1 => 0, player2 => 0}


until victory_count.has_value?(victory_requirement)


puts "#{player1} Choose your weapon!"
weapon_1 = gets.chomp.downcase

  if weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors"  
    puts "GOOD CHOICE!"
  end

  until weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors" 
    puts "Please chose rock paper or scissors."
    weapon_1 = gets.chomp.downcase
    if weapon_1 == "rock" || weapon_1 == "paper" || weapon_1 == "scissors"  
      puts "GOOD CHOICE!"
    end
  end

  puts "#{player2} Choose your weapon!"
  weapon_2 = gets.chomp.downcase

  if weapon_2 == "rock" || weapon_2 == "paper" || weapon_2 == "scissors"  
    puts "GOOD CHOICE!"
  end

  until weapon_2 == "rock" || weapon_2 == "paper" || weapon_2 == "scissors" 
    puts "Please chose rock paper or scissors."
    weapon_2 = gets.chomp.downcase
    if weapon_2 == "rock" || weapon_2 == "paper" || weapon_2 == "scissors"  
      puts "GOOD CHOICE!"
    end
  end


  case 
  when weapon_1 == "rock" && weapon_2 == "scissors"
    puts "#{player1} wins!"
    victory_count[player1]+=1
    puts "Current score is #{victory_count}"
  when weapon_1 == "paper" && weapon_2 == "rock"
    puts "#{player1} wins!"
    victory_count[player1]+=1
    puts "Current score is #{victory_count}"
  when weapon_1 == "scissors" && weapon_2 == "paper"
    puts "#{player1} wins!"
    victory_count[player1]+=1
    puts "Current score is #{victory_count}"
  when weapon_2 == "rock" && weapon_1 == "scissors"
    puts "#{player2} wins!"
    victory_count[player2]+=1
    puts "Current score is #{victory_count}"
  when weapon_2 == "paper" && weapon_1 == "rock"
    puts "#{player2} wins!"
    victory_count[player2]+=1
    puts "Current score is #{victory_count}"
  when weapon_2 == "scissors" && weapon_1 == "paper"
    puts "#{player2} wins!"
    victory_count[player2]+=1
    puts "Current score is #{victory_count}"
  when weapon_2 == "rock" && weapon_1 == "rock"
    puts "Nobody wins. Tie game!"
    puts "Current score is #{victory_count}"
  when weapon_2 == "paper" && weapon_1 == "rock"
    puts "#Nobody wins. Tie game!"
    puts "Current score is #{victory_count}"
  when weapon_2 == "scissors" && weapon_1 == "paper"
    puts "Nobody wins. Tie game!"
    puts "Current score is #{victory_count}"
  end
end
puts "#{victory_count.max_by{|k,v| v}[0]} is victorious!!!"














