require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test
  def test_if_it_exists
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_instance_of Crack, cr
  end

  def test_it_has_attributes
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal "keder ohulwthnw", cr.cipher
    assert_equal "9999", cr.key
    assert_equal "040895", cr.date
  end

  def test_if_it_can_output_final_shifts
    cr = Crack.new("keder ohulwthnw", nil, "040895")

    assert_equal [100, 99, 101, 14], cr.shifts
  end

end
