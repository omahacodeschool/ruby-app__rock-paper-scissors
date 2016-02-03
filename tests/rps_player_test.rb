require 'test_helper'
require 'RPS_Game'
require 'RPS_Players'
require 'RPS_score_count'

class RPSPlayerTest < Minitest::Test
 
  def test_set_battle()
    testplayers = Players.new()
    testplayers.set_weapon_for_tests("rock")
    testplayers.set_weapon_for_tests("paper")
    testplayers.set_battle_result_for_tests(0)
    testplayers.set_battle()
    assert_equal(2, testplayers.get_battle())
  end

end
