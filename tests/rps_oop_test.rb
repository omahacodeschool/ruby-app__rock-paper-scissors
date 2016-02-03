require 'test_helper'
require_relative '../lib/rps_oop' 

class GameTest < Minitest::Test
  def test_playing_rps
      x = Game.new
      x.variables
      @p1_move = "rock"
      @p2_move = "paper"
      assert_equal(      , x.playing_rps)
      #assert_equal(expected, actual)
  end
end