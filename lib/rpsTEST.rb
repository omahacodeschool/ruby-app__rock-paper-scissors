require_relative 'test_helper.rb'
require_relative 'paperrockscissorsrefactored.rb'

class RPStest < Minitest::Test
  def rock_test1
    test = Game.new
    player1 = "P"
    player2 = "R"
    assert_equal("player1",test.rps_rules("P","R"))
  end

  def rock_test2
    test = Game.new
    player1 = "R"
    player2 = "P"
    assert_equal("player2", test.rps_rules("R","P"))
  end

  def rock_test3
    test = Game.new
    player1 = "S"
    player2 = "P"
    assert_equal("player1", test.rps_rules("S","P"))
  end

  def rock_test3
    test = Game.new
    player1 = "S"
    player2 = "S"
    assert_equal("tie", test.rps_rules("S","S"))
  end
end