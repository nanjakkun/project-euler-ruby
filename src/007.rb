# frozen_string_literal: true

# https://projecteuler.net/problem=7

# 10001st prime
# Problem 7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

# 2以外の素数はは奇数なので奇数のみ調べる
puts (1..).lazy.map {|n| 2 * n + 1 }.select {|n| Prime.prime?(n) }.take(10_000).force.last
