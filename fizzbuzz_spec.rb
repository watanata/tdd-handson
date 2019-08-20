require_relative './fizzbuzz'

describe FizzBuzz do
  describe '#fizzbuzz' do
    it 'returns 1 when arg is 1' do
      expect(subject.fizzbuzz(1)).to eq 1
    end
  end
end
