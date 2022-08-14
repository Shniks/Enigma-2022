require 'time'

class Offsets

  def offset
    (Time.now.strftime("%d%m%y").to_i ** 2).to_s[-4..-1]
  end

  def offsets
    [offset[0], offset[1], offset[2], offset[3]].map(&:to_i)
  end

end
