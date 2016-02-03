require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTests < Minitest::Test
  def test_rock_vs_paper
    p1_weapon = "rock"
    p2_weapon = "paper"
    assert_equal(1,how_game_was_won(p1_weapon, p2_weapon))
    assert_equal(2,game_winner(p1_weapon, p2_weapon))
    assert_equal("Paper Covers Rock",display_how_game_won(1 ,p1_weapon, p2_weapon))
    assert_equal("Player 2 wins!",display_game_result(2))
  end
end  