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

#FANCY INTRO GOES HERE#

puts "Player 1! What is your move?"
move1 = assign_play_value(gets.chomp)

puts "Player 2! What is YOUR move?"
move2 = assign_play_value(gets.chomp)

if move1==1 && move2==3
  move2 = 0
end

if move2==1 && move1==3
  move1 = 0
end

if move1 > move2
  puts "You win Player 1!"
elsif move2 > move1  
  puts "You win Player 2!"
elsif move1 == move2
  puts "It's a tie! EVERYBODY WINS!"
end




