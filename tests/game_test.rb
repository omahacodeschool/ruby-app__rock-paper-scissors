require 'test_helper'
require '01-29-rock-paper-scissors'

class GameTest < Minitest::Test

  def test_rock_scissors
    sample_game = Game.new
    sample_game.set_player_1("rock")
    sample_game.set_player_2("scissors")

    assert_equal("Player 1", sample_game.find_match_winner)
  end

  def test_scissors_rock
    sample_game = Game.new
    sample_game.set_player_1("scissors")
    sample_game.set_player_2("rock")

    assert_equal("Player 2", sample_game.find_match_winner)
  end

  def test_paper_paper
    sample_game = Game.new
    sample_game.set_player_1("paper")
    sample_game.set_player_2("paper")

    assert_equal(nil, sample_game.find_match_winner)
  end

  def test_game_time?
    sample_game = Game.new
    sample_game.game_time?
    @current_Score = {"Player 1"=>1, "Player 2"=>1}
    @games_needed_to_win = 3

    assert_equal(true, sample_game.game_time?)
  end
  
end