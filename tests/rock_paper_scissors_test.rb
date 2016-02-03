require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTest < Minitest::Test
  def test_rock_beats_scissors_p1
    player1_weapon = "rock"
    player2_weapon = "scissors"
    assert_equal( 1, winner?(player1_weapon,player2_weapon))
  end

  def test_scissors_beats_paper_p1
    player1_weapon = "scissors"
    player2_weapon = "paper"
    assert_equal( 1, winner?(player1_weapon,player2_weapon))
  end

  def test_paper_beats_rock_p1
    player1_weapon = "paper"
    player2_weapon = "rock"
    assert_equal( 1, winner?(player1_weapon,player2_weapon))
  end 

  def test_rock_beats_scissors_p2
    player2_weapon = "rock"
    player1_weapon = "scissors"
    assert_equal( 2, winner?(player1_weapon,player2_weapon))
  end

  def test_scissors_beats_paper_p2
    player2_weapon = "scissors"
    player1_weapon = "paper"
    assert_equal( 2, winner?(player1_weapon,player2_weapon))
  end

  def test_paper_beats_rock_p2
    player2_weapon = "paper"
    player1_weapon = "rock"
    assert_equal( 2, winner?(player1_weapon,player2_weapon))
  end

  def test_rock_ties_rock
    player2_weapon = "rock"
    player1_weapon = "rock"
    assert_equal( nil, winner?(player1_weapon,player2_weapon))
  end

  def test_scissors_ties_scissors
    player2_weapon = "scissors"
    player1_weapon = "scissors"
    assert_equal( nil, winner?(player1_weapon,player2_weapon))
  end

  def test_paper_beats_paper
    player2_weapon = "paper"
    player1_weapon = "paper"
    assert_equal( nil, winner?(player1_weapon,player2_weapon))
  end   
end