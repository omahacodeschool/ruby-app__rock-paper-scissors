
class Game

  def setup
    player_names

    @player_1_name
    @player_1_score = 0
  
    @player_2_name
    @player_2_score = 0

    @player_victory = (how_many_games + 1) / 2
  end
      

  def display_end_of_series
    if @player_1_score == @player_victory 
        puts "Congratulations #{@player_1_name}"
        puts "You have won this match #{@player_1_score} games to #{@player_2_score}."
    elsif @player_2_score == @player_victory
        puts "Congratulations #{@player_2_name}"
        puts "You have won this match #{@player_2_score} games to #{@player_1_score}."
    end
  end

  def display_scoreboard
    puts "The score is"
    puts "#{@player_1_name}"+" #{@player_1_score}" 
    puts "#{@player_2_name}"+" #{@player_2_score}"
  end

  def keep_playing
    until @player_1_score == @player_victory or @player_2_score == @player_victory 
      choose_weapons
      accumulate_series_score(determine_winner_one_game)
      display_scoreboard
    end
  end

  def accumulate_series_score(winner)
    if winner == 1
      return @player_1_score +=1
    elsif winner == 2
      return @player_2_score +=1
    end
  end

  def how_many_games
    puts "Please enter 1, 3, 5, or 7 to choose how many games you want to play."
    match_duration = gets.chomp.to_i
  end

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
new_game.keep_playing
new_game.display_end_of_series


# def declare_series_winner
#   if @player_1_score == @player_victory 
#       puts "Congratulations #{@player_1_name}"
#       puts "You have won this match #{@player_1_score} games to #{@player_2_score}"       

#   elsif @player_2_score == @player_victory
#         puts "Congratulations #{@player_2_name}"
#         puts "You have won this match #{@player_2_score} games to #{@player_1_score}"
# end   




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


