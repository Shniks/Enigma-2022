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
  
end
