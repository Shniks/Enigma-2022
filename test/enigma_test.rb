require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_if_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_has_a_dictionary
    enigma = Enigma.new

    assert_equal "a", enigma.dict.first
    assert_equal " ", enigma.dict.last
    assert_equal 27, enigma.dict.length
  end

  def test_it_can_encrypt_with_a_key_and_date
    enigma = Enigma.new

    result = enigma.encrypt("hello world", "02715", "040895")
    expectation =  {
                      encryption: "keder ohulw",
                      key: "02715",
                      date: "040895"
                    }

    assert_equal expectation, result
  end

end
