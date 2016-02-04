
#Determines how many games are needed to win a set.
#
#Gets the number from user input.
#
#Returns the number of games selected as an integer.
def how_many_games
  puts "\nHow many games do you have to win to win a set?"
  return gets.chomp.to_i
end

#Takes the output of how_many_games and displays a message.
#
#best = the number of games needed to win overall
#out_of = the total number of games that will be played to determine a winner.
#
#Example
# 
#  best_of(2)
#  #=> 'Best 2 out of 3 it is!'
#
#Displays a string in the form "Best #{integer} out of #{integer} it is!"
def best_of(how_many_games)
  best = how_many_games
  out_of = best + best - 1
  puts "Best #{best} out of #{out_of} it is!"
end

#Determines the weapon that Player 1 will use for the round.
#
#Gets the weapon from user input.
#
#Returns Player 1's weapon as a string.
def get_player_one_weapon
  puts "\nPlayer 1, choose your weapon!"
  return gets.chomp.downcase
end
