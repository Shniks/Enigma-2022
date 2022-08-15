require './lib/encryptor'

class Enigma

  def encrypt(message, key = (sprintf '%05d', rand(0..9999)), date = (Time.now.strftime("%d%m%y")))
    rotated = Encryptor.new(message, key, date).encrypt
    { encryption: rotated, key: key, date: date }
  end

  def decrypt(message, key, date = (Time.now.strftime("%d%m%y")))
    rotated = Decryptor.new(message, key, date).decrypt
    { decryption: rotated, key: key, date: date }
  end

end
