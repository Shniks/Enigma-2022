require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'

class KeysTest < Minitest::Test
  def test_if_it_exists
    keys = Keys.new

    assert_instance_of Keys, keys
  end

  def test_it_can_create_a_5_digit_random_number
    keys = Keys.new

    assert_equal 5, keys.random.length
  end

  def test_it_can_create_4_separate_keys
    keys = Keys.new
    stub = "02715"

    keys.stub(:random, stub) do
      assert_equal "02715", keys.random
      assert_equal [2, 27, 71, 15], keys.keys
    end
  end

end
