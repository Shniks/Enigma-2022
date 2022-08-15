require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_if_it_exists
    shift = Shift.new("02715", "040895")

    assert_instance_of Shift, shift
  end

  def test_if_it_has_attributes
    shift = Shift.new("02715", "040895")

    assert_equal "02715", shift.key
    assert_equal "040895", shift.date
  end

  def test_it_can_generate_keys_and_offsets
    shift = Shift.new("02715", "040895")
    key = "02715"
    date = "040895"

    assert_equal  [2, 27, 71, 15], shift.keys(key)
    assert_equal [1, 0, 2, 5], shift.offsets(date)
  end

  def test_if_it_can_output_final_shifts
    shift = Shift.new("02715", "040895")

    assert_equal [3, 27, 73, 20], shift.shift
  end

end
