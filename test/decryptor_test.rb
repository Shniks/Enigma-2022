require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'
require 'pry'

class DecryptorTest < Minitest::Test
  def test_if_it_exists
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_instance_of Decryptor, de
  end

  def test_it_has_attributes
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal "keder ohulw", de.message
    assert_equal "02715", de.key
    assert_equal "040895", de.date
  end

  def test_if_it_can_output_final_shifts
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal [3, 27, 73, 20], de.shifts
  end

  def test_if_it_can_convert_message_string_to_an_array
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"], de.chars
  end

  def test_if_it_can_convert_message_string_with_upcase_letters_to_an_array
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"], de.chars
  end

  def test_it_can_bring_in_the_dictionary
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal "a", de.dict.first
    assert_equal " ", de.dict.last
    assert_equal 27, de.dict.length
  end

  def test_it_can_decrypt_with_a_key_and_date
    de = Decryptor.new("keder ohulw", "02715", "040895")

    assert_equal "hello world", de.decrypt
  end

end
