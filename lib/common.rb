# Methods common to both encryptor and decryptor classes
module Common

  def shifts(k = key, d = date)
    Shift.new(k, d).shifts
  end

  def chars
    message.downcase.chars
  end

  def dict
    Dictionary.new.dict
  end
  
end
