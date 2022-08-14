class Shift

  def random
    rand(0..9999)
  end

  def key
    sprintf '%05d', random
  end

end
