class Solver
  def factorial(num)
    raise ArgumentError, 'n must be a non-negative integer' unless num.is_a?(Integer) && num >= 0
    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def reverse(word)
    raise TypeError, 'Input must be a string' unless word.is_a?(String)

    word.reverse
  end
end
