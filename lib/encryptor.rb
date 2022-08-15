require './lib/shift'
require './lib/dictionary'

class Encryptor

  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def shifts(k = key, d = date)
    Shift.new(k, d).shifts
  end

  def chars
    message.chars
  end

  def dict
    Dictionary.new.dict
  end

  def encrypt
    chars.each do |char|

    end
  end

end
