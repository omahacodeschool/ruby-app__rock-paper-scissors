require 'test_helper.rb'
require 'rock-paper-scissors.rb'

class RockPaperScissorsTest < Minitest::Test
  def test_game_winner1
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("rock")
    sample_game.set_player2_weapon("paper")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner2
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("paper")
    sample_game.set_player2_weapon("rock")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner3
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("rock")
    sample_game.set_player2_weapon("scissors")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner4
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("scissors")
    sample_game.set_player2_weapon("rock")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner5
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("paper")
    sample_game.set_player2_weapon("scissors")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner6
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("scissors")
    sample_game.set_player2_weapon("paper")

    assert_equal(1, sample_game.game_winner)
  end

  def test_game_winner7
    sample_game = RPS_Game.new
    sample_game.set_player1_weapon("paper")
    sample_game.set_player2_weapon("paper")

    assert_equal(nil, sample_game.game_winner)
  end
end


# Sample test from string_segmenter
  #def test_word_in_word
   #sample_input = "speakersatsthisword"
    #assert_equal(["speak", "ersats", "this", "word"], segment_string(sample_input))
  #end
# Sample test template
  #def test_description_of_test
    #sample_input = "Hello World"
    #assert_equal("expected outcome", method_you_wrote(sample_input))
  #end