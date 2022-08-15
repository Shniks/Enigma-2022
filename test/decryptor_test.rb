require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'
require 'pry'

class DecryptorTest < Minitest::Test
  def test_if_it_exists
    de = Decryptor.new("hello world", "02715", "040895")

    assert_instance_of Decryptor, de
  end


end
