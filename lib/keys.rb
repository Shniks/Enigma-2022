class Keys

  attr_reader :random

  def initialize(random = (sprintf '%05d', rand(0..9999)))
    @random = random
  end

  def keys
    [random[0..1], random[1..2], random[2..3], random[3..4]].map(&:to_i)
  end

end
