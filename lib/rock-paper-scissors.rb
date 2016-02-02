# Define a method to play a game of RPS
#
# Rock beats scissors, loses to paper
# Paper beats rock, loses to scissors
# Scissors beats paper, loses to rock
#
#
# Displays the String passed in from the method identify_player_text to both
# players
#
# Asks and collects their names with gets.chomp
#
def identify_player
  indentify_player_text
  return gets.chomp.capitalize
end
#
# Based on the value of round_count, choose_weapon_text puts' a String from
# the Array round_text
# 
# $player_count increases by 1
#
def indentify_player_text
  player_id_text = [
    "Who dares enter the field of battle?",
    "And who shall you test your fate against, #{$player1}?"]

  puts player_id_text[$player_count].to_s
  $player_count += 1
end
#
# Displays the String passed in from the method choose_weapon_text to both
# players
#
# Asks and collects their weapons with gets.chomp
#
def choose_weapon
  choose_weapon_text
  return gets.chomp.downcase
end
#
# Based on the value of round_count, choose_weapon_text puts' a String from
# the Array round_text
#
# $round_count increases by 1
#
# In the unlikely event of ties pushing past round 5 ($round_count == 10),
# $round_count is reset to 0 
#
# THIS DOESN'T WORK EXACTLY AS EXPECTED
#
def choose_weapon_text
  if $round_count > 10
    $round_count = 0
    choose_weapon
  else
    round_text = [
      "Very well. #{$player1}, what is your weapon of choice: Rock, paper, or scissors?",
      "Now #{$player2}, with what do you wish to vanquish #{$player1}: Rock, paper, or scissors?",
      "Again, #{$player1}! Choose your weapon.",
      "And you, #{$player2}, another chance to fell your foe...",
      "Things are really heating up, #{$player1}. Pick your poison.",
      "Finish him #{$player2}! Rock, paper, or scissors?",
      "Again? Alright #{$player1}, choose again I guess.",
      "#{$player2}, you know the drill.",
      "This is it! Last chance to redeem your pride #{$player1}.",
      "Sweep the leg #{$player2}!!!"]

    puts round_text[$round_count].to_s
    $round_count += 1
  end
end
#
# Sets the parameters by which a win is determined for both players: the
# hierarchy of rock, paper, scissors
#
# If one or the other player wins, 1 is added to their respective win counter
#
# If they both choose the same weapon, a tie is evaluated and the block ends
#
def game_winner
  if ($weapon1 == "rock" && $weapon2 == "scissors") || ($weapon1 == "paper" && $weapon2 == "rock") || ($weapon1 == "scissors" && $weapon2 == "paper")
    $win1 += 1
  elsif ($weapon2 == "rock" && $weapon1 == "scissors") || ($weapon2 == "paper" && $weapon1 == "rock") || ($weapon2 == "scissors" && $weapon1 == "paper")
    $win2 += 1
  else #$weapon1 == $weapon2
  end
  game_winner_text
end
#
# Defines the String passed in to game_winner based on $win counts 1 and 2, or
# recognizes a tie if the same weapon is chosen
#
# Needs to find evaluation based on last round won instead of overall win count
#
def game_winner_text
  if $win1 > $win2
    puts "#{$weapon1.capitalize} defeats #{$weapon2}, and #{$player1} vanquishes #{$player2}!"
    puts "For shame, #{$player2}..."
  elsif $win2 > $win1
    puts "You chose wisely, #{$player2}! #{$weapon2.capitalize} is certainly mightier than the feeble #{$weapon1}."
    puts "You disgust me #{$player1}."
  elsif $weapon1 == $weapon2
    puts "We have a tie! It seems #{$player1} and #{$player2} are indeed well matched... You both chose #{$weapon1}."
  end
end
#
# Defines the method, best_of_5, to loop the program, repeating game_winner,
# best_of_5_text, and choose_weapon until either player 1 or player 2 wins 3
# games ($win1 or $win2 == 3)
#
# NEED TO FIX : Evaluates 1 more round of choose_weapon after 3 won rounds
#
def best_of_5
  until $win1 == 3 || $win2 == 3  
    game_winner
    best_of_5_text
    $weapon1 = choose_weapon
    $weapon2 = choose_weapon
  end
end
#
# Based on the values of $win1 and $win2, 1 of 3 Strings is passed from
# best_of_5_text to best_of_5
#
def best_of_5_text
  if $win1 == 3
    puts "Congrats, #{$player1}! You've won #{$win1} matches."
  elsif $win2 == 3
    puts "Congrats, #{$player2}! You've won #{$win2} matches."
  elsif $win1 < 3 || $win2 < 3
    puts "#{$player1}: #{$win1} to #{$player2}: #{$win2}"
  end
end
#
# Sets $player_count, $round_count, and both $win variables to 0 in order to
# act as counters
#
$player_count = 0
$round_count = 0
$win1 = 0
$win2 = 0
#
# Sets player and weapons variables based on what is returned from the
# identify_player and choose_weapn methods
#
$player1 = identify_player
$player2 = identify_player
$weapon1 = choose_weapon
$weapon2 = choose_weapon
#
# Calls the method, best_of_5 to begin the process
#
best_of_5