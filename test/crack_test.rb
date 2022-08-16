require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test
  def test_if_it_exists
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_instance_of Crack, cr
  end

  def test_it_has_attributes
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal "keder ohulwthnw", cr.message
    assert_equal "9999", cr.key
    assert_equal "040895", cr.date
  end

  def test_if_it_can_output_final_shifts
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal [100, 99, 101, 14], cr.shifts
  end

  def test_if_it_can_convert_message_string_to_an_array
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w", "t", "h", "n", "w"], cr.chars
  end

  def test_if_it_can_convert_message_string_with_upcase_letters_to_an_array
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w", "t", "h", "n", "w"], cr.chars
  end

  def test_it_can_bring_in_the_dictionary
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal "a", cr.dict.first
    assert_equal " ", cr.dict.last
    assert_equal 27, cr.dict.length
  end

  def test_it_can_crack_with_just_the_date
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal "hello world", cr.crack
  end

end
