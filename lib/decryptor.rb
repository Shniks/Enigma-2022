require './lib/shift'
require './lib/dictionary'

class Decryptor

  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def shifts(k = key, d = date)
    Shift.new(k, d).shifts
  end

end
