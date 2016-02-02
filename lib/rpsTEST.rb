require_relative 'test_helper.rb'
require_relative 'paperrockscissorsrefactored.rb'

class RPStest < Minitest::Test
  def rock_test1
    player1 = "p"
    player2 = "r"
    assert_equal(player1_setup, sample_game.game_winner)
  end

  def rock_test2
    player1 = "r"
    player2 = "p"
    assert_equal(player2, sample_game.game_winner)
  end
end
assert_equal(player_setup1, sample_game.game.winner)
