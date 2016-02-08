require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTest < Minitest::Test

  def test_player1_win1
    test_game = Game.new
    
    test_game.set_player1_move("Rock")
    test_game.set_player2_move("Scissors")

    assert_equal(1, test_game.determine_game_winner)

  end
  
  def test_player1_win1a
      test_game = Game.new
      
      test_game.set_player1_move("Rock")
      test_game.set_player2_move("Lizard")

      assert_equal(1, test_game.determine_game_winner)

  end
  
  def test_player1_win2
    test_game = Game.new

    test_game.set_player1_move("Paper")
    test_game.set_player2_move("Rock")

    assert_equal(1, test_game.determine_game_winner)

  end

  def test_player1_win2a
    test_game = Game.new

    test_game.set_player1_move("Paper")
    test_game.set_player2_move("Spock")

    assert_equal(1, test_game.determine_game_winner)

  end

  def test_player1_win3
    test_game = Game.new

    test_game.set_player2_move("Scissors")
    test_game.set_player1_move("Paper")

    assert_equal(2, test_game.determine_game_winner)

  end

  def test_player1_win3a
    test_game = Game.new

    test_game.set_player2_move("Scissors")
    test_game.set_player1_move("Lizard")

    assert_equal(2, test_game.determine_game_winner)

  end
  
  def test_player2_win1
    test_game = Game.new

    test_game.set_player2_move("Rock")
    test_game.set_player1_move("Scissors")

    assert_equal(2, test_game.determine_game_winner)

  end

  def test_player2_win2
    test_game = Game.new

    test_game.set_player2_move("Paper")
    test_game.set_player1_move("Rock")

    assert_equal(2, test_game.determine_game_winner)


  end

  def test_player2_win3
    test_game = Game.new

    test_game.set_player2_move("Scissors")
    test_game.set_player1_move("Paper")

    assert_equal(2, test_game.determine_game_winner)

  end

  def test_tie1
    test_game = Game.new

    test_game.set_player1_move("Rock")
    test_game.set_player2_move("Rock")

    assert_equal(nil, test_game.determine_game_winner)
  end

  def test_tie2
    test_game = Game.new

    test_game.set_player1_move("Paper")
    test_game.set_player2_move("Paper")

    assert_equal(nil, test_game.determine_game_winner)
  end

  def test_tie3
    test_game = Game.new

    test_game.set_player1_move("Scissors")
    test_game.set_player2_move("Scissors")

    assert_equal(nil, test_game.determine_game_winner)
  end

end
