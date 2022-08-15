require './lib/encryptor'

class Enigma

  def encrypt(message, key = nil, date = nil)
    rotated = Encryptor.new(message, key, date).encrypt
    { encryption: rotated, key: key, date: date }
  end

end
