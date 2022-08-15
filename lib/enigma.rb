require './lib/encryptor'

class Enigma

  attr_reader :dict

  def initialize
    @dict = ("a".."z").to_a << " "
  end

  def encrypt(message, key = nil, date = nil)
    Encryptor.new(message, key, date)
  end

end
