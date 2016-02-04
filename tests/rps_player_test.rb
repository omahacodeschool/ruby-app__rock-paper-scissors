require 'test_helper'
require 'RPS_Players'

class RPSPlayerTest < Minitest::Test
 
  def test_set_battle_player2_wins()
    testplayers = Players.new()
    testplayers.set_weapon_for_tests("rock")
    testplayers.set_other_weapon_for_tests("paper")
    testplayers.set_battle()
    assert_equal(2, testplayers.get_battle())
  end

  def test_set_battle_player1_wins()
    testplayers = Players.new()
    testplayers.set_weapon_for_tests("scissors")
    testplayers.set_other_weapon_for_tests("paper")
    testplayers.set_battle()
    assert_equal(1, testplayers.get_battle())
  end

   def test_set_battle_tie()
    testplayers = Players.new()
    testplayers.set_weapon_for_tests("paper")
    testplayers.set_other_weapon_for_tests("paper")
    testplayers.set_battle()
    assert_equal(0, testplayers.get_battle())
  end

end
