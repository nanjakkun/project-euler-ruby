# frozen_string_literal: true

#
# https://projecteuler.net/problem=10
#
# Summation of primes
# Problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#

require 'prime'

puts (3..2_000_000).step(2).select {|n| Prime.prime?(n) }.sum + 2