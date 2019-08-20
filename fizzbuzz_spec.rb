require_relative './fizzbuzz'

describe FizzBuzz do
  describe '#fizzbuzz' do
    it 'returns 1 when arg is 1' do
      expect(subject.fizzbuzz(1)).to eq '1'
    end
    it 'returns 7 when arg is 7' do
      expect(subject.fizzbuzz(7)).to eq '7'
    end
  end
end
