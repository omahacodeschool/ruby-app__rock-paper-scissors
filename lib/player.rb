require_relative '../lib/rps_v2.rb'

class Player
		#Get a @player's name
	#
	#
	#Returns a @player's name
	def get_player_name
		puts "\n-------------------------------------------------------"
		return gets.chomp.capitalize
	end

	#set player one's name
	#
	#str - is the String that is input
	def set_p1_name(str)
		return @player1 = str
	end

	#set player two's name
	#
	#str - is the String that is input
	def set_p2_name(str)
		return @player2 = str
	end
end

