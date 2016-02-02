require 'test_helper'
require 'RPS_vs_Comp'

class RockPaperScissorsTest < Minitest::Test
  def test_winning_weapon1
    sample_game = RPS_Game_Vs_Comp.new
    sample_game.set_weapons("ROCK", "PAPER")
    assert_equal(2, sample_game.winning_weapon)
  end

  def test_winning_weapon2
    sample_game = RPS_Game_Vs_Comp.new    
    sample_game.set_weapons("SCISSORS", "ROCK")
    assert_equal(2, sample_game.winning_weapon)
  end

  def test_winning_weapon3
    sample_game = RPS_Game_Vs_Comp.new    
    sample_game.set_weapons("SCISSORS", "PAPER")
    assert_equal(1, sample_game.winning_weapon)
  end

  def test_winning_weapon_if_tie
    sample_game = RPS_Game_Vs_Comp.new
    sample_game.set_weapons("PAPER", "PAPER")
    assert_equal(nil, sample_game.winning_weapon)  
  end

  def test_who_won_all_rounds?
    sample_game = RPS_Game_Vs_Comp.new
    sample_game.set_scores(3, 4)
    assert_equal(4, sample_game.who_won_all_rounds?)

  end

end