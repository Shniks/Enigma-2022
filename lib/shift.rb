require './lib/keys'
require './lib/offsets'

class Shift

  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def shift
    keys(key).map.with_index do |value, index|
      value + offsets(date)[index]
    end
  end

  def keys(key)
    Keys.new(key).keys
  end

  def offsets(date)
    Offsets.new(date).offsets
  end

end
