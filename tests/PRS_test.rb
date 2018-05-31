require 'test_helper.rb'
require 'ruby-app__rock-paper-scissors.rb'

class PRSTest < Minitest::Test

  def test_1
  
    #Weapon power is relative to the user's weapon's power.
    #user power is always at 1. Computer power at 0 loses 
    #(and program selects losing weapon), and power at 2 wins.
    

    sample_game = RockPaperScissorsGame.new
    sample_game.set_user_weapon("r")
    sample_game.set_comp_weapon("p")

    
    assert_equal("comp_win", sample_game.is_set_over_check?)
  end

end

# Remember, the names of all test methods 
# should begin with "test_".