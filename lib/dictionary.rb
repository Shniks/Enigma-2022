class Dictionary

  attr_reader :dict

  def initialize
    @dict = ("a".."z").to_a << " "
  end

end 
