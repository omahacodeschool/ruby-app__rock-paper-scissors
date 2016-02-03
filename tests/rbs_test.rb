require 'test_helper'
require 'rock-paper-scissors'

class RockPaperScissorsTests < Minitest::Test
  def test_rock_vs_paper
    p1_weapon = "rock"
    p2_weapon = "paper"
    assert_equal(1,how_game_was_won(p1_weapon, p2_weapon))
    assert_equal(2,game_winner(p1_weapon, p2_weapon))
    assert_equal("Paper Covers Rock",display_how_game_won(1 ,p1_weapon, p2_weapon))
    assert_equal("Player 2 wins!",display_game_result(2))
  end

  def test_rock_vs_scissors
    p1_weapon = "rock"
    p2_weapon = "scissors"
    assert_equal(3,how_game_was_won(p1_weapon, p2_weapon))
    assert_equal(1,game_winner(p1_weapon, p2_weapon))
    assert_equal("Rock Smashes Scissors",display_how_game_won(3 ,p1_weapon, p2_weapon))
    assert_equal("Player 1 wins!",display_game_result(1))
  end

  def test_rock_vs_rock
    p1_weapon = "rock"
    p2_weapon = "rock"
    assert_equal(0,how_game_was_won(p1_weapon, p2_weapon))
    assert_equal(nil,game_winner(p1_weapon, p2_weapon))
    assert_equal("rock equals rock",display_how_game_won(0 ,p1_weapon, p2_weapon))
    assert_equal("It's a draw!",display_game_result(nil))
  end

end  

# def display_how_game_won(won, weapon_p1, weapon_p2)
#   if won == 1
#     return "Paper Covers Rock"
#   elsif won == 2
#     return "Scissors Cut Paper"
#   elsif won == 3
#     return "Rock Smashes Scissors"
#   else won == 0
#     return "#{weapon_p1} equals #{weapon_p2}"
#   end
# end