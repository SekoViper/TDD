require_relative '../solver'

describe Solver do
  solver = Solver.new

  context 'When given a positive integer' do
    it 'Returns the correct factorial value' do
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(3)).to eq(6)
    end
  end

  context 'When given a negative integer' do
    it 'Raises an exception' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
  context 'When giving a non integer value' do
    it 'Raise an exception' do
      expect { solver.factorial(2.5) }.to raise_error(ArgumentError)
      expect { solver.factorial('Umair') }.to raise_error(ArgumentError)
    end
  end

  # TDD for reverse string method
  context 'Reverse' do
    it 'when given a string' do
      expect(solver.reverse('Seko')).to eq('okeS')
      expect(solver.reverse('world')).to eq('dlrow')
      expect(solver.reverse('')).to eq('')
    end
  end

  context 'When given a non-string Argument' do
    it 'Return TypeError' do
      expect { solver.reverse(nil) }.to raise_error(TypeError)
      expect { solver.reverse(1) }.to raise_error(TypeError)
      expect { solver.reverse([]) }.to raise_error(TypeError)
    end
  end

  # TDD for fizzBuzz
  context 'FizzBuzz' do
    it 'Return Fizz when number is divisible by 3' do
      expect(solver.fizz_buzz(3)).to eq('fizz')
      expect(solver.fizz_buzz(6)).to eq('fizz')
      expect(solver.fizz_buzz(9)).to eq('fizz')
    end

    it 'Return Buzz when number is divisible by 5' do
      expect(solver.fizz_buzz(5)).to eq('buzz')
      expect(solver.fizz_buzz(10)).to eq('buzz')
      expect(solver.fizz_buzz(20)).to eq('buzz')
    end

    it 'Return FizzBuzz when number is divisible by 3 and 5' do
      expect(solver.fizz_buzz(45)).to eq('fizzbuzz')
      expect(solver.fizz_buzz(30)).to eq('fizzbuzz')
      expect(solver.fizz_buzz(15)).to eq('fizzbuzz')
    end

    it 'Return number when number' do
      expect(solver.fizz_buzz(7)).to eq('7')
      expect(solver.fizz_buzz(2)).to eq('2')
      expect(solver.fizz_buzz(11)).to eq('11')
    end

    it 'raises an ArgumentError if input is not an integer' do
      expect { solver.fizz_buzz(nil) }.to raise_error(ArgumentError)
      expect { solver.fizz_buzz('string') }.to raise_error(ArgumentError)
      expect { solver.fizz_buzz([]) }.to raise_error(ArgumentError)
    end
  end
end
