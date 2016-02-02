
# Remember, the names of all test methods should begin with "test_".
require 'test_helper'
require 'rock_paper_scissors'

class TestGame < Minitest::Test
  def test_victory_conditions
    weapon_1 = "rock"
    weapon_2 = "paper"
    assert_equal((2), victory_conditions(weapon_1, weapon_2))
  end
  def test_victory_conditions
    weapon_1 = "scissors"
    weapon_2 = "paper"
    assert_equal((2), victory_conditions(weapon_1, weapon_2))
  end
end






