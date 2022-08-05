# frozen_string_literal: true

module LeetcodeRuby
  module MinimumPathSum
    class Maze
      def initialize(grid)
        @grid = grid
        @max_row = @grid.size - 1
        @max_col = @grid[0].size - 1
      end

      def self.sum(array)
        array.reduce(0) { |sum, num| sum + num }
      end

      def sum(array)
        self.class.sum(array)
      end

      def min_path(min_row = 0, min_col = 0, memo = Array.new(@grid.size) { Array.new(@grid[0].size - 1) })
        return memo[min_row][min_col] if memo[min_row][min_col]
        return @grid[@max_row][@max_col] if (min_row == @max_row) && (min_col == @max_col)

        # row
        res = []

        if min_row < @max_row
          min = min_path(min_row + 1, min_col, memo)
          res << (@grid[min_row][min_col] + min)
        end
        # col
        if min_col < @max_col
          min = min_path(min_row, min_col + 1, memo)
          res << (@grid[min_row][min_col] + min)
        end
        memo[min_row][min_col] = res.min
        memo[min_row][min_col]
      end
    end

    class Solution
      def initialize(input)
        @input = input
      end

      def run
        Maze.new(@input).min_path
      end
    end
  end
end
