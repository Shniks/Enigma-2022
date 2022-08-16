require './lib/decryptor'

class Crack

  attr_reader :message, :key, :date

  def initialize(cipher, date)
    @message= cipher
    @key = "00000"
    @date = date
  end

  def crack
    de = Decryptor.new(message, @key, date)
    until de.decrypt[-4..-1] == " end"
      advance_key
      de = Decryptor.new(message, @key, date)
    end
    [de.decrypt[0..-5], key]
  end

  def advance_key
    @key = sprintf '%05d', (@key.to_i + 1)
  end

end
