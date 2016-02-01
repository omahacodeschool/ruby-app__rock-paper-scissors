require 'test_helper.rb'
require 'paperrockscissorsrefactored.rb'
class rpstest < minitest::test
def test_game_winner
  sample_game = game.new
  sample_game.set_p1_weapon = "p"
  sample_game.set_p2_weapon = "r"
  assert_equal(player1, sample_game.game_winner)
end