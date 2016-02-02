require "test_helper"
require "rock_paper_scissors_oop"

class PaperRockScissorsTest < Minitest::Test
  def test_prs_game
    sample_game = Game.new
    sample_game.set_player1_move("scissors")
    sample_game.set_player2_move("paper")
    assert_equal(1, sample_game.prs_game)
  end

  def test_prs_game_2
    sample_game = Game.new
    sample_game.set_player1_move("rock")
    sample_game.set_player2_move("scissors")
    assert_equal(1, sample_game.prs_game)
  end

  def test_prs_game_3
    sample_game = Game.new
    sample_game.set_player1_move("paper")
    sample_game.set_player2_move("rock")
    assert_equal(1, sample_game.prs_game)
  end

  def test_prs_game_4
    sample_game = Game.new
    sample_game.set_player2_move("scissors")
    sample_game.set_player1_move("paper")
    assert_equal(2, sample_game.prs_game)
  end

  def test_prs_game_5
    sample_game = Game.new
    sample_game.set_player2_move("paper")
    sample_game.set_player1_move("rock")
    assert_equal(2, sample_game.prs_game)
  end

  def test_prs_game_6
    sample_game = Game.new
    sample_game.set_player2_move("rock")
    sample_game.set_player1_move("scissors")
    assert_equal(2, sample_game.prs_game)
  end

  def test_winner_count
    s

end



