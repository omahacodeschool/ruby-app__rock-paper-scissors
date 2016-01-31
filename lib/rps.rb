#Check if the following conditions are met to see if player one wins
#
# p1 - The String that is player one's input
# p2 - The String that is player two's input
#
#Returns true or false
def if_player_1_wins?(p1, p2)
	(p1 == "scissors" && p2 == "paper") || (p1 == "rock" && p2 == "scissors") || (p1 == "paper" && p2 == "rock")
end

#Check to see if it's a draw
#
# p1 - The String that is player one's input
# p2 - The String that is player two's input
#
#Returns true or false
def draw?(p1, p2)
	p1 == p2
end

#Get a player's name
#
#
#Returns a player's name
def get_player_name
	puts "\n-------------------------------------------------------"
	return gets.chomp.capitalize
end

#Get a player's name
#
#
#Returns a player's name
def get_player_input
	puts "\n-------------------------------------------------------"
	return gets.chomp.downcase
end


puts "Player one, please type your name."
player1 = get_player_name

puts "Player two, please type your name."
player2 = get_player_name

score = {"#{player1}" => 0, "#{player2}" => 0}

while score.values.max < 3

	puts "#{player1}" +", please type rock, paper, or scissors"
	p1 = get_player_input

	puts "#{player2}" +", please type rock, paper, or scissors"
	p2 = get_player_input

	puts "#{player1}" + " chose " + "#{p1}" + ". " + "#{player2}" + " chose " + "#{p2}" + "."

	if draw?(p1, p2)
 	 	puts "It's a draw!"

	elsif if_player_1_wins?(p1, p2)
		score["#{player1}"] += 1
	 	puts "#{player1.capitalize}" + " wins this round."

	elsif !if_player_1_wins?(p1, p2)
		score["#{player2}"] += 1
	  	puts "#{player2.capitalize}" + " wins this round."

	end
	puts score
end
puts "#{score.max_by{|k,v| v}[0].upcase}" + " WINS OVERALL!!!"




