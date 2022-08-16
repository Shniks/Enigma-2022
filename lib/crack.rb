require './lib/shift'
require './lib/dictionary'
require './lib/common'

class Crack
  include Common

  attr_reader :cipher, :key, :date

  def initialize(cipher, key, date)
    @cipher = cipher
    @key = key
    @date = date
  end

end
