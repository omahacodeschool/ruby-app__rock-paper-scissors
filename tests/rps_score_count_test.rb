require 'test_helper'
require_relative '../lib/RPS_Players'

class RPSScoreCountTest < Minitest::Test
   
  def test_determine_set_winner_player1()
    testplayers = Score_count.new()
    testplayers.set_games_won_for_tests(3)
    testplayers.set_other_games_won_for_tests(1)
    testplayers.set_determine_set_winner()
    assert_equal(1, testplayers.get_determine_set_winner())
  end

  def test_determine_set_winner_player2()
    testplayers = Score_count.new()
    testplayers.set_games_won_for_tests(1)
    testplayers.set_other_games_won_for_tests(2)
    testplayers.set_determine_set_winner()
    assert_equal(2, testplayers.get_determine_set_winner())
  end

  def test_determine_set_winner_tie()
    testplayers = Score_count.new()
    testplayers.set_games_won_for_tests(2)
    testplayers.set_other_games_won_for_tests(2)
    testplayers.set_determine_set_winner()
    assert_equal(0, testplayers.get_determine_set_winner())
  end

  def test_determine_set_games_won()
    testplayers = Score_count.new()
    testplayers.set_games_won_for_tests(2)
    testplayers.set_games_won
    assert_equal(3, testplayers.get_games_won())
  end

  def test_determine_set_other_games_won()
    testplayers = Score_count.new()
    testplayers.set_other_games_won_for_tests(1)
    testplayers.set_other_games_won
    assert_equal(2, testplayers.get_other_games_won())
  end

  def test_determine_set_games_tied()
    testplayers = Score_count.new()
    testplayers.set_games_tied()
    assert_equal(1, testplayers.get_games_tied)
  end

end
