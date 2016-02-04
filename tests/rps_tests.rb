require 'test_helper'
require 'game_methods'

class RPSTest < Minitest::Test
  #Your test methods go here
  def test_failure
    assert_equal(2, 1)
  end
  
  def p1_paper_wins
    sample_game = Game.new
    sample_game.set_weap_player_1("paper")
    sample_game.set_weap_player_2("rock")
    assert_equal(true, sample_game.player_1_wins_with_paper)
  end

  def p1_scissors_wins
    sample_game = Game.new
    sample_game.set_weap_player_1("scissors")
    sample_game.set_weap_player_2("paper")
    assert_equal(true, sample_game.layer_1_wins_with_scissors)
  end

  def p1_rock_wins
    sample_game = Game.new
    sample_game.set_weap_player_1("rock")
    sample_game.set_weap_player_2("scissors")
    assert_equal(true, sample_game.player_1_wins_with_rock)
  end

end