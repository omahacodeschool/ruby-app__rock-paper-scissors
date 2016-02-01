require 'pry'


puts "How many games do you want in your set?"
number_of_games = gets.chomp.to_i

puts "Player 1, please enter your name:"
  player_1_name = gets.chomp
  puts "Hello, #{player_1_name}!"

  puts "Player 2, please enter your name:"
  player_2_name = gets.chomp
  puts "Hello, #{player_2_name}!"

player_1_score = 0
player_2_score = 0
set_number = 0
win_number = (number_of_games/2)

until player_1_score > win_number || player_2_score > win_number

  set_number += 1


  puts "Okay, it's set number: #{set_number}. Player 1, enter your move:"
  player_1_move = gets.chomp.downcase
  puts "Player 2, enter your move:"
  player_2_move = gets.chomp.downcase
  
  if player_1_move == player_2_move
      puts "That's a draw!"
    end

  if player_1_move == 'paper'
    if player_2_move == 'rock'
      puts "#{player_1_name}, you win set number: #{set_number}!"
      player_1_score += 1
    end
    if player_2_move == 'scissors'
      puts "#{player_2_name}, you win set number: #{set_number}!"
      player_2_score += 1
    end

  elsif player_1_move == 'scissors'
    if player_2_move == 'rock'
      puts "#{player_2_name}, you win set number: #{set_number}!"
      player_2_score += 1
    end
    if player_2_move == 'paper'
      puts "#{player_1_name}, you win set number: #{set_number}!"
      player_1_score +=1
    end

  elsif player_1_move == 'rock'
    if player_2_move == 'paper'
      puts "#{player_2_name}, you win set number: #{set_number}!"
      player_2_score += 1
    end
    if player_1_move == 'scissors'
      puts "#{player_1_name} you win set number: #{set_number}!"
      player_1_score +=1
    end
  end
  puts "\nEnd of set number #{set_number}.\nThe current score is:\nPlayer 1: #{player_1_score}\nPlayer 2: #{player_2_score}\n\n\n"
end

if player_1_score > player_2_score
  puts "Player 1, #{player_1_name}, is the winner! Congratulations, #{player_1_name}!"
elsif player_2_score > player_1_score
  puts "Player 2, #{player_2_name}, is the winner! Congratulations, #{player_2_name}!"
end




# if player_1_score <=> player_2_score == 0
#   puts "Draw!"
# if player_1_score <=> player_2_score == 1
#   puts "#{player_1_name} wins!"
  

        

