puts "Player one, please type your name."
puts "\n-------------------------------------------------------"
player1 = gets.chomp.capitalize

puts "Player two, please type your name."
puts "\n-------------------------------------------------------"
player2 = gets.chomp.capitalize

score = {"#{player1}" => 0, "#{player2}" => 0}

while score.values.max < 3
	puts "#{player1}" +", please type rock, paper, or scissors"
	puts "\n-------------------------------------------------------"
	p1 = gets.chomp.downcase

	puts "#{player2}" +", please type rock, paper, or scissors"
	puts "\n-------------------------------------------------------"
	p2 = gets.chomp.downcase

	puts "#{player1}" + " chose " + "#{p1}" + ". " + "#{player2}" + " chose " + "#{p2}" + "."

	if (p1 == "scissors" && p2 == "paper") || (p1 == "rock" && p2 == "scissors") || (p1 == "paper" && p2 == "rock")
		score["#{player1}"] += 1
	 	puts "#{player1.capitalize}" + " wins this round."
  
	elsif (p2 == "scissors" && p1 == "paper") || (p2 == "rock" && p1 == "scissors") || (p2 == "paper" && p1 == "rock")
		score["#{player2}"] += 1
	  	puts "#{player2.capitalize}" + " wins this round."

	else
 	 	puts "It's a draw!"
  
	end
	puts score
end

puts "#{score.max_by{|k,v| v}[0].upcase}" + " WINS OVERALL!!!"

# def get_player_name(str)
# end

# def get_player_input(str)
# end

# def update_score(int)
# end