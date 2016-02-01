require 'pry'

#def rock_paper_scissors(str)
  $player_1_score = 0
  $player_2_score = 0
  $player_1_name = ""
  $player_2_name = ""

  puts "Player 1, please enter your name:"
  $player_1_name = gets.chomp
  puts "Hello, #{$player_1_name}!"

  puts "Player 2, please enter your name:"
  $player_2_name = gets.chomp
  puts "Hello, #{$player_2_name}!"

  puts "Player 1, enter your move:"
  player_1_move = gets.chomp.downcase
  puts "Player 2, enter your move:"
  player_2_move = gets.chomp.downcase
  
  if player_1_move == player_2_move
      puts "That's a draw!"
    end

  if player_1_move == 'paper'
    if player_2_move == 'rock'
      puts "#{$player_1_name}, you win!"
      $player_1_score += 1
    end
    if player_2_move == 'scissors'
      puts "#{$player_2_name}, you win!"
      $player_2_score += 1
    end

  elsif player_1_move == 'scissors'
    if player_2_move == 'rock'
      puts "#{$player_2_name}, you win!"
      $player_2_score += 1
    end
    if player_2_move == 'paper'
      puts "#{$player_1_name} wins!"
      $player_1_score +=1
    end

  elsif player_1_move == 'rock'
    if player_2_move == 'paper'
      puts "#{$player_2_name}, you win!"
      $player_2_score += 1
    end
    if player_1_move == 'scissors'
      puts "#{$player_1_name} wins!"
      $player_1_score +=1
    end
  end




# if player_1_score <=> player_2_score == 0
#   puts "Draw!"
# if player_1_score <=> player_2_score == 1
#   puts "#{player_1_name} wins!"
  

        

