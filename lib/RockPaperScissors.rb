##most simple possible version
#ask player 1 for move/store move
#ask player 2 for move/store move
#compare moves
#determine winner

$potential_plays = Hash["rock",1, "paper",2,"scissors",3]


def assign_play_value(play)
  if $potential_plays.has_key?(play) 
  move = $potential_plays[play]
  end
end

$win_counter = Hash["P1",0, "P2",0]


#FANCY INTRO GOES HERE#
puts "Let's play"
sleep 1
puts "ROCK"
sleep 1
puts "PAPER"
sleep 1
puts "SCISSORS!"
sleep 1
puts "How many games would you like to play?"
v = (gets.to_i/2) + 1 #v stands for victories

puts "\nOkay! You will have to win " + v.to_s + " games to be the CHAMPION!\n"

puts "Player 1! What is your name?"
Player1 = gets.chomp

puts "Player 2! What is your name?"
Player2 = gets.chomp

until $win_counter["P1"]==v || $win_counter["P2"]==v
    
  puts 
  puts Player1 + "! What is your move?"
  move1 = assign_play_value(gets.chomp)
  
  puts
  puts Player2 + ", what is YOUR move?"
  move2 = assign_play_value(gets.chomp)
  
  sleep 1
  
  if move1==1 && move2==3
    move2 = 0
  end
  
  if move2==1 && move1==3
    move1 = 0
  end
  
  if move1 > move2
    puts "\nYou win that round " + Player1 + "!\n"
    $win_counter["P1"] += 1
  elsif move2 > move1  
    puts "\nYou win that round " + Player2 + "!\n"
    $win_counter["P2"] += 1
  elsif move1 == move2
    puts "\nIt's a tie! EVERYBODY WINS!\n"
  end
  
  sleep 1
end 

if $win_counter["P1"]==v
    puts Player1 + " is the Rock Paper Scissors Champion!"
  elsif $win_counter["P2"]==v
    puts Player2 + " is the Rock Paper Scissors Champion!"
end 
  




