# frozen_string_literal: true

require 'csv'

# frozen_string_literal: true

# https://projecteuler.net/problem=81
#
#
# Path sum: two ways
# Problem 81
#
# In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.
# ⎛⎝⎜⎜⎜⎜⎜⎜131201630537805673968036997322343427464975241039654221213718150111956331⎞⎠⎟⎟⎟⎟⎟⎟
#
# Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."),
# a 31K text file containing a 80 by 80 matrix,
# from the top left to the bottom right by only moving right and down.
class Problem081
  SIZE = 80
  COST_MATRIX = CSV.read('./src/001-100/p081_matrix.txt')
  MEMO_MATRIX = Array.new(SIZE).map { Array.new(SIZE, nil) }

  def self.sums(x, y)
    if x < 0 || y < 0
      nil
    elsif MEMO_MATRIX[x][y]
      MEMO_MATRIX[x][y]
    else
      prev_val = [sums(x, y - 1), sums(x - 1, y)].select(&:itself).min || 0

      (prev_val + COST_MATRIX[x][y].to_i).tap do |val|
        MEMO_MATRIX[x][y] = val
      end
    end
  end
end

puts Problem081.sums(Problem081::SIZE - 1, Problem081::SIZE - 1)
