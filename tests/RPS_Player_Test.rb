require_relative 'test_helper'
require_relative '../lib/RPS_Game'
require_relative '../lib/RPS_Players'
require_relative '../lib/RPS_score_count'

class RPSPlayerTest < Minitest::Test
 
   def test_string_with_caps_and_valid_words
    str = "AppleMeaganGuitar"
    result = segment_string(str)
    assert_equal(["apple", "meagan", "guitar"], result)
  end

  def test_string_with_valid_words
    str = "applemeaganguitar"
    result = segment_string(str)
    assert_equal(["apple", "meagan", "guitar"], result)
  end

  def test_string_with_multiple_possible_word_selections
    str = "smilespreadtacohelping"
    result = segment_string(str)
    assert_equal(["smile", "spread", "taco", "helping"], result)
  end

  def test_string_with_invalid_characters
    str = "smilespreaddfgjhhelping"
    result = segment_string(str)
    assert_equal(nil, result)
end
