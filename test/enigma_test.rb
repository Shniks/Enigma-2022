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

  def test_it_can_encrypt_with_only_key_provided
    enigma = Enigma.new

    date = Time.now.strftime("%d%m%y")

    result = enigma.encrypt("hello world", "02715")
    expectation =  {
                      encryption: "okjdvfugyrb",
                      key: "02715",
                      date: "#{date}"
                    }

    assert_equal expectation, result
  end

  # def test_it_can_encrypt_with_no_key_or_date_provided #need to test this
  #   enigma = Enigma.new
  #
  #   stub = "hello world", "02715", "040895"
  #
  #   enigma.stub(:encrypt, stub) do
  #     result = enigma.encrypt("hello world")
  #     expectation =  {
  #       encryption: "okjdvfugyrb",
  #       key: "02715",
  #       date: "040895"
  #     }
  #
  #     assert_equal expectation, result
  #   end

  # end

end
