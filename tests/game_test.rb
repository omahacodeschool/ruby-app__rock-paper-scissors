require 'test_helper'
require '01-29-rock-paper-scissors'

class GameTest < Minitest::Test

  def test_rock_scissors
    sample_game = Game.new
    sample_game.set_player_1("rock")
    sample_game.set_player_2("scissors")
  end

  def test_scissors_rock
  sample_game = Game.new
  sample_game.set_player_1("scissors")
  sample_game.set_player_2("rock")
  end

  def test_paper_paper
  sample_game = Game.new
  sample_game.set_player_1("paper")
  sample_game.set_player_2("paper")
  end
  
end