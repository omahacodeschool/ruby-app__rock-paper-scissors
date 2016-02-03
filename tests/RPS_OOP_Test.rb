require 'test_helper'
require 'RPS_OOP_Method_File'

class StringSegmenterTest < Minitest::Test
  # Your test methods go here.
  def test_four_words
    string = "turtlebluetraintrust"
    assert_equal(["turtle", "blue", "train", "trust"], segment_string(string))
  end

  def test_three_words
    string = "elephantwafflepuzzle"
    assert_equal(["elephant", "waffle", "puzzle"], segment_string(string))
  end

  def test_plural_words
    string = "lionstigersbears"
    assert_equal(["lions", "tigers", "bears"], segment_string(string))
  end

end

# Remember, the names of all test methods should begin with "test_".