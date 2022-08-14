require 'time'

class Offsets

  def offset
    (Time.now.strftime("%d%m%y").to_i ** 2).to_s[-4..-1]
  end

end
