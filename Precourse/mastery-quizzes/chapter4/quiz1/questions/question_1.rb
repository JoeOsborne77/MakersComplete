# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.
def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    return 'FizzBuzz'
  elsif num % 5 == 0
    return 'Buzz'
  elsif num % 3 == 0
    return 'Fizz'
  else return num 
  end
end

puts fizzbuzz 0.upto(20) { |i| puts fizzbuzz(i) }