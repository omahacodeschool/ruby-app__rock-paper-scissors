
# Remember, the names of all test methods should begin with "test_".
require 'test_helper'
require 'rock_paper_scissors'

class TestGame < Minitest::Test
  def test_rock_paper
    sample_game = Game.new
    sample_game.set_player1_weapon("rock")
    sample_game.set_player2_weapon("paper")

    assert_equal((2), sample_game.victory_conditions)
  end
  def test_scissors_paper
    sample_game = Game.new
    sample_game.set_player1_weapon("scissors")
    sample_game.set_player2_weapon("paper")
    
    assert_equal((1), sample_game.victory_conditions)
  end
  def test_rock_scissors
    sample_game = Game.new
    sample_game.set_player1_weapon("rock")
    sample_game.set_player2_weapon("scissors")
    
    assert_equal((1), sample_game.victory_conditions)
  end
  def test_rock_rock
    sample_game = Game.new
    sample_game.set_player1_weapon("rock")
    sample_game.set_player2_weapon("rock")
    
    assert_equal((nil), sample_game.victory_conditions)
  end
end






