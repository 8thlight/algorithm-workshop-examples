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
    xs_enum = xs.to_enum
    ys_enum = ys.to_enum
    result = []
    while xs_enum.has_next? || ys_enum.has_next?
      if !ys_enum.has_next?
        result << xs_enum.next
      elsif !xs_enum.has_next?
        result << ys_enum.next
      elsif xs_enum.peek <= ys_enum.peek
        result << xs_enum.next
      else
        result << ys_enum.next
      end
    end
    result
  end
end

class Enumerator
  def has_next?
    begin
      _ = peek
      return true
    rescue StopIteration
      return false
    end
  end
end
