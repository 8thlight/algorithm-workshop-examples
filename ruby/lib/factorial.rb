module Factorial
  def factorial
    return self if self <= 1
    decrement = 1
    result = self
    while self - decrement > 1
      result *= self - decrement
      decrement += 1
    end
    result
  end
end

class Integer
  include Factorial
end
