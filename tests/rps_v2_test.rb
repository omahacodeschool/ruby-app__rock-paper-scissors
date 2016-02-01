require 'test_helper'
require 'rps_v2'

class RockPaperScissorsTest < Minitest::Test

	def test_player_one_win
		sample_game =  RockPaperScissorsGame.new
		sample_game.set_p1_weapon("rock")
		sample_game.set_p2_weapon("scissors")
		win_hash = {"scissors" => ["rock", "spock"], "rock" => ["paper", "spock"], "paper" => ["scissors", "lizard"] }

	  	assert_equal(@player1, find_winner(win_hash))
	end

	# def test_player_two_win
	# 	$p1 = "rock"
	# 	$p2 = "paper"
	# 	win_hash = {"paper" => ["scissors", "lizard"], "scissors" => ["rock", "spock"], "rock" => ["paper", "spock"], "lizard" => ["rock", "scissors"], "spock" => ["paper", "lizard"]}

	#   	assert_equal($player1, find_winner(win_hash))
	# end

	# def test_game_draw
	# 	$p1 = "rock"
	# 	$p2 = "rock"
	# 	win_hash = {"paper" => ["scissors", "lizard"], "scissors" => ["rock", "spock"], "rock" => ["paper", "spock"], "lizard" => ["rock", "scissors"], "spock" => ["paper", "lizard"]}

	# 	assert_equal(nil, find_winner(win_hash))
	# end

	# def test_overall_draw_true
	# 	$player1 = "Beth"
	# 	$player2 = "Hal"
	# 	score = {$player1 => 3, $player2 => 3}

	# 	assert_equal(true, overall_draw?(score))
	# end

	# def test_overall_draw_false
	# 	$player1 = "Beth"
	# 	$player2 = "Hal"
	# 	score = {$player1 => 1, $player2 => 2}

	# 	assert_equal(false, overall_draw?(score))
	# end

end