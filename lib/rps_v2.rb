

class RockPaperScissorsGame

	#This method runs the game
	def game_on
		
		@win_hash = {"paper" => ["scissors", "lizard"], "scissors" => ["rock", "spock"], "rock" => ["paper", "spock"], "lizard" => ["rock", "scissors"], "spock" => ["paper", "lizard"]}

		puts "If you would like to play against the computer, please type 'yes'."
		computer_game = gets.chomp.downcase

		puts "Player one, please type your name."
		set_p1_name(get_player_name)



		if computer_game == "yes" 
			@player2 = "Hal"

		else
			puts "Player two, please type your name."
			set_p2_name(get_player_name)
		end


		puts "Please type how many rounds you would like to play."
		number_of_games = gets.chomp.to_i

		round_number = 0

		score = {@player1 => 0, @player2 => 0}


		while round_number < number_of_games
			puts "#{@player1}" +", please type rock, paper, scissors, lizard, spock."
			set_p1_weapon(get_player_input)

			if computer_game == "yes"
				@p2 = %w[rock paper scissors lizard spock].sample

			else
				puts "#{@player2}" +", please type rock, paper, scissors, lizard, spock."
				set_p2_weapon(get_player_input)

			end


			puts "#{@player1}" + " chose " + "#{@p1}" + ". " + "#{@player2}" + " chose " + "#{@p2}" + "."


			winner = find_winner


				if winner == nil
			 	 	puts "It's a draw!"

				elsif winner == @player1
					score[@player1] += 1
				 	puts "#{@player1.capitalize}" + " wins this round."

				elsif winner == @player2
					score[@player2] += 1
				  	puts "#{@player2.capitalize}" + " wins this round."

				end
				puts score
				round_number += 1
		end


		if overall_draw?(score)
			puts "No one wins overall game."

		else !overall_draw?(score)
			puts "#{score.max_by{|k,v| v}[0].upcase}" + " WINS OVERALL!!!"
		end

	end

	#Get a @player's name
	#
	#
	#Returns a @player's name
	def get_player_name
		puts "\n-------------------------------------------------------"
		return gets.chomp.capitalize
	end


	#Get a @player's input
	#
	#
	#Returns a @player's input
	def get_player_input
		puts "\n-------------------------------------------------------"
		input = gets.chomp.downcase
			while input != "rock" && input != "paper" && input != "scissors" && input != "spock" && input != "lizard"
				puts "Please try typing that again."
				input = gets.chomp.downcase
			end
			return input
	end


	#Check to see if it's an overall draw
	#
	#score - The Hash that's storing the @player's name and number of rounds won
	# @player1 - The string that is player one's name
	# @player2 - The string that is player two's name
	#
	#Returns true or false
	def overall_draw?(score)
		# puts "\n-------------------------------------------------------"
		# puts "Player 1 score is " + "#{score[@player1]}" 
		# puts "Player 2 score is " + "#{score[@player2]}" 
		score[@player1] == score[@player2]
	end


	#check to see who wins
	#
	#win_hash - Hash that contains winning combos
	#
	#returns player or nil
	def find_winner
		#player with the value that corresponds with the key wins
		if @win_hash[@p1].include?(@p2)
			return @player2
		elsif @win_hash[@p2].include?(@p1)
			return @player1
		else
			return nil
		end
	end

	def set_p1_name(str)
		@player1 = str
	end

	def set_p2_name(str)
		@player2 = str
	end

	def set_p1_weapon(str)
		@p1 = str
	end

	def set_p2_weapon(str)
		@p2 = str
	end

end
# game_on




