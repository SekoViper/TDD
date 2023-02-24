require_relative '../solver'

describe Solver do
  solver = Solver.new
  context 'When given a positive integer' do
    it 'Returns the correct factorial value' do
      expect (solver.factorial(0)).to eq(1)
      expect (solver.factorial(1)).to eq(2)
      expect (solver.factorial(2)).to eq(6)
    end
  end
  context 'When given a negative integer' do
    it 'Raises an exception' do
      expect {solver.factorial(-1)}.to raise_error(ArgumentError)
    end
  end
  context 'When giving a non integer value' do
    it 'Raise an exception' do
      expect {solver.factorial(2.5)}.to raise_error(ArgumentError)
      expect {solver.factorial('Umair')}.to raise_error(ArgumentError)
    end
  end
end
