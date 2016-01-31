require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_find_word
    sample_str = "turtlehappy"
    assert_equal((["turtle", "happy"]), segment_string(sample_str))
  end
  def test_plural_words
    sample_str = "wordsupper"
    assert_equal((["word", "supper"]), segment_string(sample_str))
  end
  def test_compound_word
    sample_str = "birdbluebird"
    assert_equal((["bird", "bluebird"]), segment_string(sample_str))
  end
  def test_versions_words
    sample_str = "swimsswimingly"
    assert_equal((["swims","swimingly"]), segment_string(sample_str))
  end
end
# Remember, the names of all test methods should begin with "test_".