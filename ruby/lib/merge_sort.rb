module MergeSort
  def self.sort(xs)
    xs
  end

  def self.split(xs)
    return xs if xs.count == 1
    middle = floor(xs.count / 2)
    [xs[0..middle], xs[middle..-1]]
  end
end

