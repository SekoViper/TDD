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
end
