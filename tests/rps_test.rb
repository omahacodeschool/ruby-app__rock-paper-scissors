require 'test_helper'
require 'rps_oop'

class RockPaperScissorsTest < Minitest::Test
  
  def test_rock_scissors_p1
    sample_game = Game.new
    sample_game.set_player_1("rock")
    sample_game.set_player_2("scissors")

    assert_equal(1, sample_game.winner?)
  end

  def test_scissors_paper_p1
    sample_game = Game.new
    sample_game.set_player_1("scissors")
    sample_game.set_player_2("paper")

    assert_equal(1, sample_game.winner?)
  end

  def test_paper_rock_p1
    sample_game = Game.new
    sample_game.set_player_1("paper")
    sample_game.set_player_2("rock")

    assert_equal(1, sample_game.winner?)
  end

  def test_rock_scissors_p2
    sample_game = Game.new
    sample_game.set_player_2("rock")
    sample_game.set_player_1("scissors")

    assert_equal(2, sample_game.winner?)
  end

  def test_scissors_paper_p2
    sample_game = Game.new
    sample_game.set_player_2("scissors")
    sample_game.set_player_1("paper")

    assert_equal(2, sample_game.winner?)
  end

  def test_paper_rock_p2
    sample_game = Game.new
    sample_game.set_player_2("paper")
    sample_game.set_player_1("rock")

    assert_equal(2, sample_game.winner?)
  end

  def test_rock_rock_tie
    sample_game = Game.new
    sample_game.set_player_2("rock")
    sample_game.set_player_1("rock")

    assert_equal(nil, sample_game.winner?)
  end

  def test_scissors_scissors_tie
    sample_game = Game.new
    sample_game.set_player_2("scissors")
    sample_game.set_player_1("scissors")

    assert_equal(nil, sample_game.winner?)
  end

  def test_paper_paper_tie
    sample_game = Game.new
    sample_game.set_player_2("paper")
    sample_game.set_player_1("paper")

    assert_equal(nil, sample_game.winner?)
  end

end
