# frozen_string_literal: true

# Special Pythagorean triplet
# Problem 9

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2

# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

ans = nil

(333..1000).each do |i|
  (1..333).each do |j|
    k = Math.sqrt((i * i + j * j).to_f)

    if (k - k.to_i).zero? && (i + j + k == 1_000)
      ans = (i * j * k).to_i
      break
    end
  end

  break if ans
end

puts ans
