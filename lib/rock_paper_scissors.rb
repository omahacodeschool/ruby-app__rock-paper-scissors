#Rock Paper Scissors Game

puts "Wanna play a game?"
puts "Player 1, what is your name?"
player1 = gets.chomp
puts "Player 2, what is your name?"
player2 = gets.chomp

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
when weapon_1 == "paper" && weapon_2 == "rock"
  puts "#{player1} wins!"
when weapon_1 == "scissors" && weapon_2 == "paper"
  puts "#{player1} wins!"
when weapon_2 == "rock" && weapon_1 == "scissors"
  puts "#{player2} wins!"
when weapon_2 == "paper" && weapon_1 == "rock"
  puts "#{player2} wins!"
when weapon_2 == "scissors" && weapon_1 == "paper"
  puts "#{player2} wins!"
when weapon_2 == "rock" && weapon_1 == "rock"
  puts "Nobody wins. Tie game!"
when weapon_2 == "paper" && weapon_1 == "rock"
  puts "#Nobody wins. Tie game!"
when weapon_2 == "scissors" && weapon_1 == "paper"
  puts "Nobody wins. Tie game!"
end














