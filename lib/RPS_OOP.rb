require 'pry'
require_relative 'RPS_OOP_Method_File'


############### ACTUAL PROGRAM STARTS BELOW ################################

new_game = Game.new

new_game.set_up_game

new_game.run_game

game_winner = new_game.game_winner

puts "And the winner is.....#{game_winner}! Congratulations, #{game_winner}!"

################ PROGRAM END #################


