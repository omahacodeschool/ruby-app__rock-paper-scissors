def rock_paper_scissors

  #INITIALIZE VARIABLE FOR PLAY AGAIN OPTION
  y = $play_again_answer
  while y == $play_again_answer do
    
    #INITIAL SETUP OF PLAYERS
    puts "Welcome to Rock-Paper-Scissors!"
    puts "The 216th most addictive game on the internet."
    puts 
    puts "What name do you want to use here, Player 1?"
    puts  "Enter name here:      "
          $player_1_name = gets.chomp
    puts
    puts  "Welcome #{$player_1_name}"
    puts  "\n\n"
    puts  "What name do you want to use here, Player 2?"
    puts  "Enter name here: "
          $player_2_name = gets.chomp
    puts  "Welcome #{$player_2_name}"     
    puts  "\n\n"
    puts
    puts  "Determine a champion in a best of 1, 3, 5 or 7 game match."
    puts  "Choose the number of games in your match."
          "Enter 1, 3, 5 or 7 here"
          match_duration = gets.chomp
          md = match_duration.to_i
          $player_victory = (md + 1) / 2
    puts "You will compete in a #{match_duration} game match, so"
    puts "the first player with #{$player_victory} victories"
    puts "is the champion."
    puts "\n\n"
    puts
    puts  "I grow weary of the formalities. Play on!"
    puts  "_______________________________________________________"


    #SCOREBOARD

    $player_1_score = 0
    $player_2_score = 0
    puts "SCOREBOARD"
    puts
    puts "#{$player_1_name} #{$player_1_score}"
    puts "#{$player_2_name} #{$player_2_score}"
    puts  "_______________________________________________________"
  
      #GAME PLAY

    until $player_1_score == $player_victory or $player_2_score == $player_victory do

      #WEAPON OPTIONS
      rock = "r"
      paper = "p"
      scissors = "s"

      #PLAY ONE GAME

      puts "Choose your weapon. Rock (r), Paper (p) or Scissors (s)."  
      puts 
      puts "#{$player_1_name} type in your weapon here:       "
            $player_1_weapon = gets.chomp.downcase
      puts
      puts "#{$player_1_name} has chosen #{$player_1_weapon}"
      puts
      puts "#{$player_2_name} type in your weapon here:       "
            $player_2_weapon = gets.chomp.downcase
      puts  "#{$player_2_name} has chosen #{$player_2_weapon}"
  


      #DETERMINE WINNER OF ONE GAME - MAIN VERSION
  

      if $player_1_weapon == "r" && $player_2_weapon == "r" 
        puts "It's a tie. No points awarded."

      elsif $player_1_weapon == "r" && $player_2_weapon == "s"
        puts "Rock breaks scissors. Point to #{$player_1_name}."
        $player_1_score += 1

      elsif $player_1_weapon == "r" && $player_2_weapon == "p"
        puts "Paper covers rock. Point to #{$player_2_name}."
        $player_2_score += 1

      elsif $player_1_weapon == "s" && $player_2_weapon == "r"
        puts "Rock breaks scissors. Point to #{$player_2_name}."
        $player_2_score += 1

      elsif $player_1_weapon == "s" && $player_2_weapon == "s"
        puts "It's a tie. No points awarded."

      elsif $player_1_weapon == "s" && $player_2_weapon == "p"
        puts "Scissors cut paper. Point to #{$player_1_name}."
        $player_1_score += 1

      elsif $player_1_weapon == "p" && $player_2_weapon == "r"
        puts "Paper covers rock. Point to #{$player_1_name}."
        $player_1_score += 1

      elsif $player_1_weapon == "p" && $player_2_weapon == "s"
        puts "Scissors cut paper. Point to #{$player_2_name}."
        $player_2_score += 1

      elsif $player_1_weapon == "p" && $player_2_weapon == "p"
        puts "It's a tie. No points awarded."
      end
    end

      #MATCH DISPENSATION

      #ANNOUNCEMENT OF THE WINNER
    if  $player_1_score == $player_victory 
        puts 
        puts "Congratulations #{$player_1_name}"
        puts "You have won this match #{$player_1_score} games to #{$player_2_score}"
        puts 

    elsif $player_2_score == $player_victory
        puts 
        puts "Congratulations #{$player_2_name}"
        puts "You have won this match #{$player_2_score} games to #{$player_1_score}"
        puts 
    end

      #THIS IS NOT OVER, BUDDY!

        puts "Would you like to play again?"
        puts "Enter 'y' for 'yes' or 'n' for 'no"
        $play_again_answer = gets.chomp.downcase
        puts #{$play_again_answer}
    if  y == #{$play_again_answer} 
        $player_1_score = 0
        $player_2_score = 0
  
    else
        puts "Goodbye for now."
    end
  end
end
#-------------------------------------------------

#DETERMINE WINNER OF ONE GAME - ALTERNATE VERSION

# My result table not sure how the spaceship would use


# "rock" == "rock"
# "rock" > "scissors"
# "rock" < "paper"
# "paper" = "paper"
# "paper" > "rock"
# "paper" < "scissors"
# "scissors" = "scissors"
# "scissors" > "paper"
# "scissors" < "rock"


# result == Player_1_weapon <=> Player_2_weapon
# result == 0 #TIE - POINT TO NEITHER
# result == 1 #POINT TO PLAYER_1
# result == -1 #POINT TO PLAYER_2

# if result == 1
#   Player_1_score += Player_1_score

# elsif result == -1
#   Player_2_score += Player_2_score
#




#SOLITAIRE NOTE 



#Generate a random answer from the computer for the solitaire version
#rand(3)