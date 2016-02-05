require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTest < Minitest::Test

  def test_player1_win1
    $player1_move = "Rock"
    $player2_move = "Scissors"

    assert_equal(1, determine_game_winner)

  end

  def test_player1_win2
    $player1_move = "Paper"
    $player2_move = "Rock"

    assert_equal(1, determine_game_winner)

  end

  def test_player1_win3
      $player2_move = "Scissors"
      $player1_move = "Paper"

      assert_equal(2, determine_game_winner)

  end

  def test_player2_win1
    $player2_move = "Rock"
    $player1_move = "Scissors"

    assert_equal(2, determine_game_winner)

  end

  def test_player2_win2
    $player2_move = "Paper"
    $player1_move = "Rock"

    assert_equal(2, determine_game_winner)


  end

  def test_player2_win3
    $player2_move = "Scissors"
    $player1_move = "Paper"

    assert_equal(2, determine_game_winner)

  end

  def test_tie1
    $player1_move = "Rock"
    $player2_move = "Rock"

    assert_equal(nil, determine_game_winner)
  end

  def test_tie2
    $player1_move = "Paper"
    $player2_move = "Paper"

    assert_equal(nil, determine_game_winner)
  end

  def test_tie3
    $player1_move = "Scissors"
    $player2_move = "Scissors"

    assert_equal(nil, determine_game_winner)
  end

end
