def rock_paper_scissors

  puts "Welcome to Rock-Paper-Scissors!"
  puts "The 216th most addictive game on the internet."
  puts 
  puts "What name do you want to use here, Player 1?"
  puts "Enter name here:      "
        player_1_name = gets.chomp
  puts
  puts  "Welcome #{player_1_name}"
  puts  "\n\n"
  puts "What name do you want to use here, Player 2?"
  puts "Enter name here: "
        player_2_name = gets.chomp
  puts  "Welcome #{player_2_name}"     
  puts "\n\n"
  puts
  puts "Determine a champion in a best of 1, 3, 5 or 7 game match."
  puts "Choose the number of games in your match."
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
  puts "#{player_1_name} #{$player_1_score}"
  puts "#{player_2_name} #{$player_2_score}"
  puts  "_______________________________________________________"
  
#GAME PLAY

  while $player_1_score < $player_victory && $player_2_score < $player_victory do

#PLAY ONE GAME

  puts "Choose your weapon. Rock, Paper or Scissors."  
  puts 
  puts "#{player_1_name} type in your weapon here:       "
        player_1_weapon = gets.chomp.downcase
  puts
  puts "#{player_1_name} has chosen #{player_1_weapon}"
  puts
  puts "#{player_2_name} type in your weapon here:       "
        player_2_weapon = gets.chomp.downcase
  puts     "#{player_2_name} has chosen #{player_2_weapon}"
  


#DETERMINE WINNER OF ONE GAME - MAIN VERSION
  rock = "rock"
  paper = "paper"
  scissors = "scissors"

  if #{player_1_weapon} == "rock" && #{player_2_weapon} == "rock" 
    puts "It's a tie. No points awarded."

  elsif #{player_1_weapon} == "rock" && #{player_2_weapon} == "scissors"
    puts "Rock breaks scissors. Point to Player_1."
    $player_1_score += 1

  elsif #{player_1_weapon} == "rock" && #{player_2_weapon} == "paper"
    puts "Paper covers rock. Point to Player_2."
    $player_2_score += 1

  elsif #{player_1_weapon} == "scissors" && #{player_2_weapon} == "rock"
    puts "Rock breaks scissors. Point to Player_2."
    $player_2_score += 1

  elsif #{player_1_weapon} == "scissors" && #{player_2_weapon} == "scissors"
    puts "It's a tie. No points awarded."

  elsif #{player_1_weapon} == "scissors" && #{player_2_weapon} == "paper"
    puts "Scissors cut paper. Point to Player_1."
    $player_1_score += 1

  elsif #{player_1_weapon} == "paper" && player_2_weapon == "rock"
    puts "Paper covers rock. Point to Player_1."
    $player_1_score += 1

  elsif #{player_1_weapon} == "paper" && #{player_2_weapon} == "scissors"
    puts "Scissors cut paper. Point to Player_2."
    $player_2_score += 1

  elsif #{player_1_weapon} == "paper" && #{player_2_weapon} == "paper"
    puts "It's a tie. No points awarded."
    end
  end

#MATCH DISPENSATION

#ANNOUNCEMENT OF THE WINNER
  if $player_1_score == $player_victory 
      puts "Congratulations #{$player_1_name}"
      puts "You have won this match #{$player_1_score} games to #{$player_2_score}"

  elsif $player_2_score == $player_victory
      puts "Congratulations #{$player_2_name}"
      puts "You have won this match #{$player_2_score} games to #{$player_1_score}"
  end

#THIS IS NOT OVER, BUDDY!

  puts "Would you like to play again?"
  puts "Enter 'y' for 'yes' or 'n' for 'no"
      play_again_answer = (gets.chomp)

  if play_again_answer == "y"
      $player_1_score = 0
      $player_2_score = 0

  else
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
