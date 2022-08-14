require 'time'

class Offsets

  def last_four
    (Time.now.strftime("%d%m%y").to_i ** 2).to_s[-4..-1]
  end

  def offsets
    [last_four[0], last_four[1], last_four[2], last_four[3]].map(&:to_i)
  end

end
