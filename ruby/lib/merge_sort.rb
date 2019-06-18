module MergeSort
  def self.sort(xs)
    return xs if xs.count == 1

    first_half, second_half = split(xs)

    sorted_first_half = sort(first_half)
    sorted_second_half = sort(second_half)

    merge(sorted_first_half, sorted_second_half)
  end

  def self.split(xs)
    return xs if xs.count <= 1
    middle = (xs.count / 2).floor
    [xs[0...middle], xs[middle..-1]]
  end

  def self.merge(xs, ys)
    x_cursor = 0
    y_cursor = 0
    result = []
    while x_cursor < xs.count || y_cursor < ys.count
      if y_cursor == ys.count
        result << xs[x_cursor]
        x_cursor += 1
      elsif x_cursor == xs.count
        result << ys[y_cursor]
        y_cursor += 1
      elsif xs[x_cursor] <= ys[y_cursor]
        result << xs[x_cursor]
        x_cursor += 1
      else
        result << ys[y_cursor]
        y_cursor += 1
      end
    end
    result
  end
end
