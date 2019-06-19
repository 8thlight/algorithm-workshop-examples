module Factorial
  def factorial
    return self if self <= 1
    self * (self - 1).factorial
  end
end

class Integer
  include Factorial
end
