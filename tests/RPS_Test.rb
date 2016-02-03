require 'test_helper'
require 'method_file'

class DictionaryTest < Minitest::Test
  # Your test methods go here.
  def test_is_valid_word
    word = "lion"
    assert_equal(true, valid_word?(word))
  end

  def test_not_valid_word
    word = "purple"
    assert_equal(false, valid_word?(word))
  end
end

# Remember, the names of all test methods should begin with "test_".
