require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < Minitest::Test
  def test_if_it_exists
    en = Encryptor.new("hello world", "02715", "040895")

    assert_instance_of Encryptor, en
  end

  def test_it_has_attributes
    en = Encryptor.new("hello world", "02715", "040895")

    assert_equal "hello world", en.message
    assert_equal "02715", en.key
    assert_equal "040895", en.date
  end

  def test_if_it_can_output_final_shifts
    en = Encryptor.new("hello world", "02715", "040895")

    assert_equal [3, 27, 73, 20], en.shifts
  end

  def test_if_it_can_convert_message_string_to_an_array
    en = Encryptor.new("hello world", "02715", "040895")

    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], en.chars
  end

end
