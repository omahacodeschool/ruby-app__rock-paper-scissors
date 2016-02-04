require_relative 'test_helper'
require_relative '../lib/RockPaperScissors'

class RPSTest <  Minitest::Test
  def test_assign_play_values
    x=Game.new
    x.setup
    play = "rock"
    refute_equal(nil, x.assign_play_value(play))
    assert_equal(0, x.assign_play_value(play))
  end

  def test_turn_winner
    x=Game.new
    x.setup
    move1, move2 = 2,1
    x.set_player1value("Steve")
    refute_equal(x.player1value, nil)
    assert_equal(x.player1value, x.turn_winner(move1,move2))

  end

  def test_unique_situation
    x=Game.new
    x.setup
    move1,move2 = 1,3
    refute_equal([nil,nil], x.unique_situation(move1,move2))
    assert_equal([1,0],x.unique_situation(move1,move2))
  end
end