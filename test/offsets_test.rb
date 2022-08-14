require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offsets'
require 'pry'

class OffsetTest < Minitest::Test
  def test_if_it_exists
    offsets = Offsets.new

    assert_instance_of Offsets, offsets
  end

  def test_it_can_generate_the_offset
    offsets = Offsets.new

    assert_equal 4, offsets.offset.length
  end

end
