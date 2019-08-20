require_relative './fizzbuzz'

describe FizzBuzz do
  describe '#fizzbuzz' do
    context 'when arg is other than multiples of 3 and 5' do
      it 'returns 1 when arg is 1' do
        expect(subject.fizzbuzz(1)).to eq '1'
      end
      it 'returns 7 when arg is 7' do
        expect(subject.fizzbuzz(7)).to eq '7'
      end
    end

    context 'returns Fizz when arg is multiples of 3' do
      it 'returns Fizz when arg is 3' do
        expect(subject.fizzbuzz(3)).to eq 'Fizz'
      end
    end
  end
end
