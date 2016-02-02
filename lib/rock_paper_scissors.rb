


class Game

def setup
  player_names

  @player_1_name
  @player_1_score = 0

  @player_2_name
  @player_2_score = 0

  # @player_victory = (determine_series_win + 1) / 2
end

# def run_game
#   @p1_weapon = gets.chomp.downcase
#   @p2_weapon = gets.chomp.downcase
#   until end_of_series do
    
# end   

# def end_of_series
#     @player_1_score == @player_victory or @player_2_score == @player_victory
# end 

# def accumulate_series_score(winner)
#   if winner == 1
#     return @player_1_score +=1
#   elsif winner == 2
#     return @player_2_score +=1
# end

# def determine_series_win
#   puts "Please enter 1, 3, 5, or 7 to choose how many games you want to play."
#     match_duration = gets.chomp.to_i
    
    #md = match_duration.to_i
# end

def player_names
  puts "What name do you want to use, Player 1?"
    @player_1_name = gets.chomp
  puts "What name do you want to use, Player 2?"
    @player_2_name = gets.chomp
end


def choose_weapons
  puts "Choose 'r' for rock, 'p' for paper or 's' for scissors"
    @weapon_p1 = gets.chomp.downcase
   puts "Choose 'r' for rock, 'p' for paper or 's' for scissors" 
    @weapon_p2 = gets.chomp.downcase
end
      
def determine_winner_one_game
  if @weapon_p1 == "r" && @weapon_p2 == "s"
    return 1 
  elsif @weapon_p1 == "s" && @weapon_p2 == "p"
    return 1 
  elsif @weapon_p1 == "p" && @weapon_p2 == "r"      
    return 1 

  elsif @weapon_p1 == "p" && @weapon_p2 == "s"
    return 2
  elsif @weapon_p1 == "r" && @weapon_p2 == "p"
    return 2
  elsif @weapon_p1 == "s" && @weapon_p2 == "r"
    return 2  

  else
    return nil
  end      
end

def display_winner_one_game(r)
  if r == 1
    puts "#{@player_1_name} wins"
  elsif r == 2
    puts "#{@player_2_name} wins"
  else
    puts "Tie"
  end
end

end #this is the end of class

new_game = Game.new
new_game.setup
new_game.choose_weapons
result = new_game.determine_winner_one_game
new_game.display_winner_one_game(result)


# def declare_series_winner
#   if @player_1_score == @player_victory 
#       puts "Congratulations #{@player_1_name}"
#       puts "You have won this match #{@player_1_score} games to #{@player_2_score}"       

#   elsif @player_2_score == @player_victory
#         puts "Congratulations #{@player_2_name}"
#         puts "You have won this match #{@player_2_score} games to #{@player_1_score}"
# end   




#     #     #MATCH DISPENSATION

    
  
#     # else
#         puts "Goodbye for now."
#     #end
#   #end
# end
# end
#     puts "\n\n"
#     puts
#     puts  "I grow weary of the formalities. Play on!"
#     puts  "_______________________________________________________"


#     #SCOREBOARD

#     $player_1_score = 0
#     $player_2_score = 0
#     puts "SCOREBOARD"
#     puts
#     puts "#{$player_1_name} #{$player_1_score}"
#     puts "#{$player_2_name} #{$player_2_score}"
#     puts  "_______________________________________________________"
  
#       #GAME PLAY

#     until $player_1_score == $player_victory or $player_2_score == $player_victory do
# end
#       #WEAPON OPTIONS
#       rock = "r"
#       paper = "p"
#       scissors = "s"

#       #PLAY ONE GAME

#       puts "Choose your weapon. Rock (r), Paper (p) or Scissors (s)."  
#       puts 
#       puts "#{$player_1_name} type in your weapon here:       "
#             $player_1_weapon = gets.chomp.downcase
#       puts
#       puts "#{$player_1_name} has chosen #{$player_1_weapon}"
#       puts
#       puts "#{$player_2_name} type in your weapon here:       "
#             $player_2_weapon = gets.chomp.downcase
#       puts  "#{$player_2_name} has chosen #{$player_2_weapon}"
  


#       #DETERMINE WINNER OF ONE GAME - MAIN VERSION
  

#       if $player_1_weapon == "r" && $player_2_weapon == "r" 
#         puts "It's a tie. No points awarded."

#       elsif $player_1_weapon == "r" && $player_2_weapon == "s"
#         puts "Rock breaks scissors. Point to #{$player_1_name}."
#         $player_1_score += 1

#       elsif $player_1_weapon == "r" && $player_2_weapon == "p"
#         puts "Paper covers rock. Point to #{$player_2_name}."
#         $player_2_score += 1

#       elsif $player_1_weapon == "s" && $player_2_weapon == "r"
#         puts "Rock breaks scissors. Point to #{$player_2_name}."
#         $player_2_score += 1

#       elsif $player_1_weapon == "s" && $player_2_weapon == "s"
#         puts "It's a tie. No points awarded."

#       elsif $player_1_weapon == "s" && $player_2_weapon == "p"
#         puts "Scissors cut paper. Point to #{$player_1_name}."
#         $player_1_score += 1

#       elsif $player_1_weapon == "p" && $player_2_weapon == "r"
#         puts "Paper covers rock. Point to #{$player_1_name}."
#         $player_1_score += 1

#       elsif $player_1_weapon == "p" && $player_2_weapon == "s"
#         puts "Scissors cut paper. Point to #{$player_2_name}."
#         $player_2_score += 1

#       elsif $player_1_weapon == "p" && $player_2_weapon == "p"
#         puts "It's a tie. No points awarded."
#       end
#     end

#         #MATCH DISPENSATION

#         #ANNOUNCEMENT OF THE WINNER
#     if  $player_1_score == $player_victory 
#         puts 
#         puts "Congratulations #{$player_1_name}"
#         puts "You have won this match #{$player_1_score} games to #{$player_2_score}"
#         puts 

#     elsif $player_2_score == $player_victory
#         puts 
#         puts "Congratulations #{$player_2_name}"
#         puts "You have won this match #{$player_2_score} games to #{$player_1_score}"
#         puts 
#     end

#     #     #THIS IS NOT OVER, BUDDY!

#     #     puts "Would you like to play again?"
#     #     puts "Enter 'y' for 'yes' or 'n' for 'no"
#     #     $play_again_answer = gets.chomp.downcase
#     #     puts 
#     # if  y == $play_again_answer 
#     #     $player_1_score = 0
#     #     $player_2_score = 0
  
#     # else
#         puts "Goodbye for now."
#     #end
#   #end
# end


