class FizzBuzz
  def fizzbuzz(number)
    ret = ''
    (number % 3).zero? && ret = 'Fizz'
    (number % 5).zero? && ret += 'Buzz'

    ret.empty? ? number.to_s : ret
  end
end
