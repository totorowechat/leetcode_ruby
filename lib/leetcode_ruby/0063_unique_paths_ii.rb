# frozen_string_literal: true

module LeetcodeRuby
  module UniquePathsII
    # copy from: https://leetcode.com/problems/unique-paths-ii/discuss/2056429/Ruby-oror-DP
    class Maze
      attr_reader :maze, :h, :w

      def initialize(maze)
        @maze = maze
        @h = maze.size
        @w = maze.first.size
      end

      def neighbors(r, c)
        Enumerator.new do |y|
          y << [r + 1, c] if (r + 1 < h) && maze[r + 1][c].zero?
          y << [r, c + 1] if (c + 1 < w) && maze[r][c + 1].zero?
        end
      end

      def ans_idx(r, c)
        r * w + c
      end

      def advance_one(res, ans, r, c, orig)
        neighbors(r, c).inject(res) do |res1, (r1, c1)|
          res1.update([r1, c1] => ans[ans_idx(r1, c1)] += orig)
        end
      end

      def advance(ans, cur)
        cur.each_pair.inject({}) do |res, (coord, v)|
          advance_one(res, ans, *coord, v)
        end
      end

      def solve
        return 0 if [maze.first.first, maze.last.last].none?(&:zero?)

        cur = { [0, 0] => 1 }
        ans = Array.new(h * w, 0)
        ans[0] = 1
        cur = advance(ans, cur) until cur.empty?
        ans.last || 0
      end
    end

    class Solution
      def initialize(input)
        @input = input
      end

      def run
        Maze.new(@input).solve
      end
    end
  end
end
