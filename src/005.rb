# frozen_string_literal: true

# https://projecteuler.net/problem=5
#
# Smallest multiple
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

puts (2..20).flat_map {|n| Prime.prime_division(n) }.group_by{|x| x[0]}.map{|k, v| [k, v.map(&:last).max]}.map{|x, y| x ** y}.reduce(:*)
