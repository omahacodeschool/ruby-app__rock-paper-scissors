require_relative '../lib/rps_v2.rb'

class Player

	#Get a @player's name
	#
	#Requires command-line input
	#
	#Returns a @player's name
	def get_player_name
		return gets.chomp.capitalize
	end

	#set player one's name
	#
	#str - is the String that is input
	#
	#returns player one's name
	def set_p1_name(str)
		return @player1 = str
	end

	#set player two's name
	#
	#str - is the String that is input
	#
	#returns player two's name
	def set_p2_name(str)
		return @player2 = str
	end

	#defines player two's name
	#
	#uses the instance variable
	#
	#returns player two's name
	def name_value_1
		@player1
	end

	#defines player two's name
	#
	#uses the instance variable
	#
	#returns player two's name
	def name_value_2
		@player2
	end

end

