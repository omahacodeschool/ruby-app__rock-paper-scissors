require 'test_helper'
require 'rps'

class RockPaperScissorsTest < Minitest::Test
	def test_player_one_win
		p1 = "rock"
		p2 = "scissors"
	  	assert_equal(true, if_player_1_wins?(p1, p2))
	end

	def test_player_two_win
		p1 = "rock"
		p2 = "paper"
	  	assert_equal(false, if_player_1_wins?(p1, p2))
	end

	def test_draw
		p1 = "rock"
		p2 = "rock"
		assert_equal(true, draw?(p1, p2))
	end

	def test_draw
		p1 = "rock"
		p2 = "scissors"
		assert_equal(false, draw?(p1, p2))
	end
end