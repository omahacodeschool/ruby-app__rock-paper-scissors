require 'test_helper'
require 'rps'

class RockPaperScissorsTest < Minitest::Test
	def test_player_one_win
		$p1 = "rock"
		$p2 = "scissors"
	  	assert_equal(true, if_player_1_wins?)
	end

	def test_player_two_win
		$p1 = "rock"
		$p2 = "paper"
	  	assert_equal(false, if_player_1_wins?)
	end

	def test_game_draw_true
		$p1 = "rock"
		$p2 = "rock"
		assert_equal(true, draw?)
	end

	def test_game_draw_false
		$p1 = "rock"
		$p2 = "scissors"
		assert_equal(false, draw?)
	end

	def test_overall_draw_true
		$player1 = "Beth"
		$player2 = "Hal"
		score = {$player1 => 3, $player2 => 3}
		assert_equal(true, overall_draw?(score))
	end

	def test_overall_draw_false
		$player1 = "Beth"
		$player2 = "Hal"
		score = {$player1 => 1, $player2 => 2}
		assert_equal(false, overall_draw?(score))
	end

end