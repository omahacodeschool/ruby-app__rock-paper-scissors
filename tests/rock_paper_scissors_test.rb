require 'test_helper'
require 'rock_paper_scissors'

class RockPaperScissorsTest < Minitest::Test
  def test_determine_winner_one_game_1
    sample_game = Game.new
    sample_game.set_weapon_p1("s")
    sample_game.set_weapon_p2("p")
    assert_equal(1, sample_game.determine_winner_one_game)
  end

  def test_determine_winner_one_game_2
    sample_game = Game.new
    sample_game.set_weapon_p1("r")
    sample_game.set_weapon_p2("p")
    assert_equal(2, sample_game.determine_winner_one_game)
  end

  # def test_how_many_games
  #   sample_game = "Game.new"
  #   sample_game.set_match_duration("5")
  #   assert_equal(3, sample_game.how_many_games)
  # end

  
end #(end of class)

