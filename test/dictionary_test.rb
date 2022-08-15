require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary'

class DictionaryTest < Minitest::Test
  def test_if_it_exists
    dict = Dictionary.new

    assert_instance_of Dictionary, dict
  end

  def test_if_it_has_a_dictionary
    dict = Dictionary.new

    assert_equal "a", dict.dict.first
    assert_equal " ", dict.dict.last
    assert_equal 27, dict.dict.length
  end

end
