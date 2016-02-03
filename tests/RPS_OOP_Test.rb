require 'test_helper'
require 'RPS_OOP_Method_File'

class RPSOOPTest < Minitest::Test
  # Your test methods go here.
  def test_set_winner
    p1_weapon = "rock"
    p2_weapon = "paper"
    sample_game = Game.new
    assert_equal(2, sample_game.set_winner(p1_weapon, p2_weapon))
  end

  def test_set_winner
    p1_weapon = "rock"
    p2_weapon = "rock"
    sample_game = Game.new
    assert_equal(0, sample_game.set_winner(p1_weapon, p2_weapon))
  end

  def test_set_winner
    p1_weapon = "paper"
    p2_weapon = "scissors"
    sample_game = Game.new
    assert_equal(2, sample_game.set_winner(p1_weapon, p2_weapon))
  end

  def test_add_win_to_score
    sample_game = Game.new
    winner = 1
    sample_game.set_player_1_score(5)
    assert_equal(6, sample_game.add_win_to_score(winner))
  end

  # def test_game_winner
  #   string = "lionstigersbears"
  #   assert_equal(["lions", "tigers", "bears"], segment_string(string))
  # end

end

# Remember, the names of all test methods should begin with "test_".