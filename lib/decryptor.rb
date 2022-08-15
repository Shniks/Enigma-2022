require './lib/shift'
require './lib/dictionary'
require './lib/common'

class Decryptor
  include Common

  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end



end
