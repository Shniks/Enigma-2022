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

  def test_if_it_can_convert_message_string_with_upcase_letters_to_an_array
    en = Encryptor.new("Hello WoRld", "02715", "040895")

    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], en.chars
  end

  def test_it_can_bring_in_the_dictionary
    en = Encryptor.new("hello world", "02715", "040895")

    assert_equal "a", en.dict.first
    assert_equal " ", en.dict.last
    assert_equal 27, en.dict.length
  end

  def test_it_can_encrypt_with_a_key_and_date
    en = Encryptor.new("hello world", "02715", "040895")

    assert_equal "keder ohulw", en.encrypt
  end

  def test_it_can_encrypt_with_a_key_and_date_and_some_upper_case_letters
    en = Encryptor.new("Hello WorLd!", "02715", "040895")

    assert_equal "keder ohulw!", en.encrypt
  end

  def test_it_can_encrypt_a_message_with_characters_not_in_dictionary
    en = Encryptor.new("hello world!!", "02715", "040895")

    assert_equal "keder ohulw!!", en.encrypt
  end

end
