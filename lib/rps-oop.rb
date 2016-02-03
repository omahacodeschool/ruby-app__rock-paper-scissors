require_relative 'game_methods'

rps1 = Game.new

rps1.setup ## set counters = 0

rps1.get_number_sets #number of sets to play per match

rps1.play_game #runs game and tallies points per set

rps1.who_won #tallies who won match overall/or if tie game and displays text
