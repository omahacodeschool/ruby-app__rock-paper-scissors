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

#Check to see if it's an overall draw
#
#score - The Hash that's storing the player's name and number of rounds won
# p1 - The String that is player one's input
# p2 - The String that is player two's input
#
#Returns true or false
def overall_draw?(score, player1, player2)
	score["#{player1}"] == score["#{player2}"]
end


# def game_on
# 	puts "Player one, please type your name."
# 	player1 = get_player_name

# 	puts "Player two, please type your name."
# 	player2 = get_player_name

# 	puts "Please type how many rounds you would like to play."
# 	number_of_games = gets.chomp.to_i

# 	round_number = 0

# 	score = {"#{player1}" => 0, "#{player2}" => 0}

# 	while round_number < number_of_games #score.values.max < 3

# 		puts "#{player1}" +", please type rock, paper, or scissors"
# 		p1 = get_player_input

# 		puts "#{player2}" +", please type rock, paper, or scissors"
# 		p2 = get_player_input

# 		puts "#{player1}" + " chose " + "#{p1}" + ". " + "#{player2}" + " chose " + "#{p2}" + "."

# 		if draw?(p1, p2)
# 	 	 	puts "It's a draw!"

# 		elsif if_player_1_wins?(p1, p2)
# 			score["#{player1}"] += 1
# 		 	puts "#{player1.capitalize}" + " wins this round."

# 		elsif !if_player_1_wins?(p1, p2)
# 			score["#{player2}"] += 1
# 		  	puts "#{player2.capitalize}" + " wins this round."

# 		end
# 		puts score
# 		round_number += 1
# 	end
# 	if overall_draw?(score, player1, player2)
# 		puts "No one wins overall game."

# 	else !overall_draw?(score, player1, player2)
# 		puts "#{score.max_by{|k,v| v}[0].upcase}" + " WINS OVERALL!!!"
# 	end
# end


# game_on
