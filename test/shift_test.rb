require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require 'pry'

class ShiftTest < Minitest::Test
  def test_if_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end

  def test_it_can_create_a_5_digit_random_number
    shift = Shift.new

    assert_equal 5, shift.random.length
  end

  def test_it_can_generate_the_offset
    shift = Shift.new

    assert_equal 4, shift.offset.length
  end

end
