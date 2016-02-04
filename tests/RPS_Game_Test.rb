require 'test_helper'
require 'RPS_Game'
require 'RPS_Players'
require 'RPS_score_count'

class RPSGameTest < Minitest::Test
  
  def test_battle_outcome_player1()
    testgame = Game.new()
    testgame.set_weapon_for_tests("rock")
    testgame.set_other_weapon_for_tests("paper")
    testgame.set_battle()
    testgame.battle_outcome()
    assert_equal(get_victory_confirmation() + " " + get_other_loss_confirmation())

    # Hung up on how to even go about writing tests for battle_outcome or over_winner methods 
  end



end
