require 'test_helper'
require 'rps_oop'

class RockPaperScissorsOOPTests < Minitest::Test
  def test_rock_vs_rock
    sample_game = Game.new
    sample_game.get_p1_weapon("rock")
    sample_game.get_p2_weapon("rock")

    assert_equal("draw", sample_game.how_game_was_won)
    assert_equal(nil, sample_game.game_winner)
  end

  def test_paper_vs_paper
    sample_game = Game.new
    sample_game.get_p1_weapon("paper")
    sample_game.get_p2_weapon("paper")

    assert_equal("draw", sample_game.how_game_was_won)
    assert_equal(nil, sample_game.game_winner)
  end

  def test_scissors_vs_scissors
    sample_game = Game.new
    sample_game.get_p1_weapon("scissors")
    sample_game.get_p2_weapon("scissors")

    assert_equal("draw", sample_game.how_game_was_won)
    assert_equal(nil, sample_game.game_winner)
  end 

  def test_rock_vs_scissors
    sample_game = Game.new
    sample_game.get_p1_weapon("rock")
    sample_game.get_p2_weapon("scissors")

    assert_equal("rss", sample_game.how_game_was_won)
    assert_equal(1, sample_game.game_winner)
  end

  def test_paper_vs_rock
    sample_game = Game.new
    sample_game.get_p1_weapon("paper")
    sample_game.get_p2_weapon("rock")

    assert_equal("pcr", sample_game.how_game_was_won)
    assert_equal(1, sample_game.game_winner)
  end

  def test_scissors_vs_paper
    sample_game = Game.new
    sample_game.get_p1_weapon("scissors")
    sample_game.get_p2_weapon("paper")

    assert_equal("scp", sample_game.how_game_was_won)
    assert_equal(1, sample_game.game_winner)
  end

  def test_rock_vs_paper
    sample_game = Game.new
    sample_game.get_p1_weapon("rock")
    sample_game.get_p2_weapon("paper")

    assert_equal("pcr", sample_game.how_game_was_won)
    assert_equal(2, sample_game.game_winner)
  end   

  def test_paper_vs_scissors
    sample_game = Game.new
    sample_game.get_p1_weapon("paper")
    sample_game.get_p2_weapon("scissors")

    assert_equal("scp", sample_game.how_game_was_won)
    assert_equal(2, sample_game.game_winner)
  end

  def test_scissors_vs_rock
    sample_game = Game.new
    sample_game.get_p1_weapon("scissors")
    sample_game.get_p2_weapon("rock")

    assert_equal("rss", sample_game.how_game_was_won)
    assert_equal(2, sample_game.game_winner)
  end 

end