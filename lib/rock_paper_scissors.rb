require 'pry'

def number_needed_to_win_set
puts "How many games do you want in your set?"
return gets.chomp.to_i/2
end

def meet_player_1
puts "Player 1, please enter your name:"
  player_1_name = gets.chomp
  puts "Hello, #{player_1_name}!"
  return player_1_name
end

def meet_player_2
puts "Player 2, please enter your name:"
  player_2_name = gets.chomp
  puts "Hello, #{player_2_name}!"
  return player_2_name
end

def get_player_1_weapon
  puts "Player 1, enter your move:"
  return gets.chomp.downcase
  end

def get_player_2_weapon
  puts "Player 2, enter your move:"
  return gets.chomp.downcase
  end

def check_for_winner(player_1_weapon, player_2_weapon)
  if p1_weapon == p2_weapon
      return 0
  end

  if p1_weapon == 'paper'
    if p2_weapon == 'rock'
      return 1
    end
    if p2_weapon == 'scissors'
      return 2
    end

  elsif p1_weapon == 'scissors'
    if p2_weapon == 'rock'
      return 2
    end
    if p2_weapon == 'paper'
      return 1
    end

  elsif p1_weapon == 'rock'
    if p2_weapon == 'paper'
      return 2
    end
    if p2_weapon == 'scissors'
      return 1
    end
end



win_number = number_needed_to_win_set
player_1_name = meet_player_1
player_2_name = meet_player_2


@player_1_score = 0
@player_2_score = 0
set_number = 0


until @player_1_score > win_number || @player_2_score > win_number

  set_number += 1


  puts "Okay, it's set number: #{set_number}."
  
  p1_weapon = get_player_1_weapon
  p2_weapon = get_player_2_weapon
  set_winner = check_for_winner(p1_weapon, p2_weapon)
 
 puts "Set winner is now #{set_winner}"

 

    

  
  # if p1_weapon == p2_weapon
  #     puts "That's a draw!"
  #   end

  # if p1_weapon == 'paper'
  #   if p2_weapon == 'rock'
  #     puts "#{player_1_name}, you win set number: #{set_number}!"
  #     player_1_score += 1
  #   end
  #   if p2_weapon == 'scissors'
  #     puts "#{player_2_name}, you win set number: #{set_number}!"
  #     player_2_score += 1
  #   end

  # elsif p1_weapon == 'scissors'
  #   if p2_weapon == 'rock'
  #     puts "#{player_2_name}, you win set number: #{set_number}!"
  #     player_2_score += 1
  #   end
  #   if p2_weapon == 'paper'
  #     puts "#{player_1_name}, you win set number: #{set_number}!"
  #     player_1_score +=1
  #   end

  # elsif p1_weapon == 'rock'
  #   if p2_weapon == 'paper'
  #     puts "#{player_2_name}, you win set number: #{set_number}!"
  #     player_2_score += 1
  #   end
  #   if p1_weapon == 'scissors'
  #     puts "#{player_1_name} you win set number: #{set_number}!"
  #     player_1_score +=1
  #   end
  # end
  puts "\nEnd of set number #{set_number}.\nThe current score is:\nPlayer 1: #{@player_1_score}\nPlayer 2: #{@player_2_score}\n\n\n"
end
end

# if player_1_score > player_2_score
#   puts "Player 1, #{player_1_name}, is the winner! Congratulations, #{player_1_name}!"
# elsif player_2_score > player_1_score
#   puts "Player 2, #{player_2_name}, is the winner! Congratulations, #{player_2_name}!"
# end




# if player_1_score <=> player_2_score == 0
#   puts "Draw!"
# if player_1_score <=> player_2_score == 1
#   puts "#{player_1_name} wins!"
  

        

