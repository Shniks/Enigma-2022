require './lib/shift'
require './lib/dictionary'
require './lib/common'

class Crack
  include Common

  attr_reader :message, :key, :date

  def initialize(cipher, key, date)
    @message= cipher
    @key = "9999"
    @date = date
  end

end
