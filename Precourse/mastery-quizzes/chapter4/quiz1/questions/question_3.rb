# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.
tastywheat = [20]
(0..20).each do |i|
  tastywheat[i] = i < 2 ? i : tastywheat[i - 1] + tastywheat[i - 2]
end

puts tastywheat