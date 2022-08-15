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
    new = []
    zipped = chars.zip(shifts.cycle)
    zipped.each do |zip|
      if !dict.include?(zip.first)
        new << zip.first
      else
        rotate_by = dict.index(zip[0]) + zip[1]
        new << dict.rotate(rotate_by).first
      end
    end
    new.join
  end

end
