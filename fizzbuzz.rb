class FizzBuzz
  def fizzbuzz(number)
    return 'Fizz' if (number % 3).zero?
    return 'Buzz' if (number % 5).zero?

    number.to_s
  end
end
