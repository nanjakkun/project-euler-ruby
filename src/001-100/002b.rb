# frozen_string_literal: true

# https://projecteuler.net/problem=2
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

THRESHOLD = 4_000_000

def fib(n, memo_array = [])
  if n <= 1
    1
  elsif memo_array.length > n
    memo_array[n]
  else
    (fib(n - 1, memo_array) + fib(n - 2, memo_array)).tap do |num|
      memo_array[n] = num
    end
  end
end

accum = 0

(0..).lazy.map { |n|
  fib(n)
}.select(&:even?).take_while { |n|
  accum += n
  accum < THRESHOLD
}.force

puts accum # 4613732
