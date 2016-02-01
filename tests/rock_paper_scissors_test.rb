require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTest < Minitest::Test
  def test_rock_beats_scissors
    player1_weapon == "rock"
    player2_weapon == "scissors"
    assert_equal("player1", winner?(player1_weapon,player2_weapon))
  end
end