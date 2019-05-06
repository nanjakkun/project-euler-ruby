# frozen_string_literal: true

# https://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

# https://docs.ruby-lang.org/ja/latest/class/Prime.html
Prime.prime_division(600_851_475_143).last.first
