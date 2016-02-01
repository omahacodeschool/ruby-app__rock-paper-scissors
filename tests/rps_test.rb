require 'test_helper'
require 'winner_methods'

class RockPaperScissorsTest < Minitest::Test
  def test_user1_paper
    p1_choice = "ROCK"
    p2_choice = "PAPER"
    assert_equal("PAPER", winning_weapon(p1_choice, p2_choice))
  end

end