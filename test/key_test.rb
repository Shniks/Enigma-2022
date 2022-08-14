require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test
  def test_if_it_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_it_can_create_a_5_digit_random_number
    key = Key.new

    assert_equal 5, key.random.length
  end

end
