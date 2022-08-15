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
    rotated = []
    chars.zip(shifts.cycle).each do |element|
      insert_element_into_array(element, rotated)
    end
    rotated.join
  end

  def insert_element_into_array(element, rotated)
    if !dict.include?(element.first)
      rotated << element.first
    else
      rotate_by = dict.index(element[0]) + element[1]
      rotated << dict.rotate(rotate_by).first
    end
  end

end
