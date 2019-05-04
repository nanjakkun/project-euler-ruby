# frozen_string_literal: true

# https://projecteuler.net/problem=4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

ans =
  (900..999).to_a.repeated_permutation(2).map {|x, y|
    x * y
  }.select {|n|
    palindrome?(n)
  }.max

puts ans
