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

  def test_it_can_generate_the_last_four_for_offset
    offsets = Offsets.new

    assert_equal 4, offsets.last_four.length
  end

  def test_it_can_generate_the_4_offsets
    offsets = Offsets.new
    stub = "5908"

    offsets.stub(:last_four, stub) do
      assert_equal [5, 9, 0, 8], offsets.offsets
    end
  end

end
