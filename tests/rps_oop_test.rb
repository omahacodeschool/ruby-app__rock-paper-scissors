require 'test_helper'
require_relative '../lib/rps_oop' 

class GameTest < Minitest::Test
  def test_playing_rps
      x = Game.new
      @p1_wins = 0
      @p2_wins = 0
      @p1_move = "rock"
      @p2_move = "paper"
      assert_equal(@p2_wins == 1, x.playing_rps)
      #assert_equal(expected, actual)
  end
end