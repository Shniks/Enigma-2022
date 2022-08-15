require './lib/encryptor'

class Enigma

  def encrypt(message, key = nil, date = nil)
    Encryptor.new(message, key, date)
  end

end
