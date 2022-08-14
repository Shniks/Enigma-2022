require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
require 'pry'

class OffsetTest < Minitest::Test
  def test_if_it_exists
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_it_can_generate_the_offset
    offset = Offset.new

    assert_equal 4, offset.offset.length
  end

end
