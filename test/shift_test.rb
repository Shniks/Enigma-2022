require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_if_it_exists
    shift = Shift.new

    assert_instance_of Shift, shift
  end


end
