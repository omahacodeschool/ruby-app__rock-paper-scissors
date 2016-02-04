require 'test_helper'
require_relative '../lib/rps_oop' 

class GameTest < Minitest::Test
  def test_playing_rps
      x = Game.new
      x.set_initial_scores 
      x.set_p1_move("rock")
      x.set_p2_move("paper")
      assert_equal(2,x.playing_rps) 
      #             1        ,    1
      #assert_equal(expected, actual)
  end
end

#write add'l test for new method wins_tally