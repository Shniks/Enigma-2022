require 'time'

class Shift

  def random
    sprintf '%05d', rand(0..9999)
  end

  def offset
    (Time.now.strftime("%d%m%y").to_i ** 2).to_s[-4..-1]
  end


end
