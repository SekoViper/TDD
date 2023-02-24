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

  def fizz_buzz(num)
    raise ArgumentError, 'Input must be an integer' if !num.is_a?(Integer) || num.negative?

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
