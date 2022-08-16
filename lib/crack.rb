require './lib/decryptor'
require 'pry'

class Crack

  attr_reader :message, :key, :date

  def initialize(cipher, date)
    @message= cipher
    @key = "9999"
    @date = date
  end

  def crack
    # rotated = Decryptor.new(message, @key, date).decrypt
    # while rotated[-4..-1] != " end"
    #   @key = (key.to_i + 1).to_s
    #   rotated = Decryptor.new(message, @key, date).decrypt
    # end
    # print [rotated, key]
  end

end
