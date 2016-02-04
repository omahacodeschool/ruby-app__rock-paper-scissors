require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_1
    string = "diamondbluecrystalquantitygorilla"
    assert_equal(["diamond", "blue", "crystal", "quantity", "gorilla"], segment_string(string))
  end
  
  def test_2
    string = "diamondbluestcrystalquantitygorilla" 
    assert_equal(["diamond", "bluest", "crystal", "quantity", "gorilla"], segment_string(string))
  end

  def test_3
    string = "diamondbluestcrystalizequantitygorilla" 
    assert_equal(["diamond", "bluest", "crystalize", "quantity", "gorilla"], segment_string(string)) # Your test methods go here.
end
end

# Remember, the names of all test methods should begin with "test_".