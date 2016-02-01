require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
  def test_1
    word = "diamond"
    assert_equal(true, valid_word?(word))
  end

  def test_2
    word = "diam"
    assert_equal(false, valid_word?(word))
  end

  def test_3
    word = "dfg"
    assert_equal(false, valid_word?(word))
  end
end
# Remember, the names of all test methods should begin with "test_".