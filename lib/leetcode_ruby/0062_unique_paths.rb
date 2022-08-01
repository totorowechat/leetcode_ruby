# frozen_string_literal: true

module LeetcodeRuby
  module UniquePaths
    class Solution
      def initialize(input)
        @input = input
      end

      # @param {Integer} m
      # @param {Integer} n
      # @return {Integer}
      def unique_paths(m, n, memo = {})
        return 1 if (m == 1) || (n == 1)
        return memo["#{m}x#{n}"] if memo["#{m}x#{n}"]

        memo["#{m}x#{n}"] = unique_paths(m - 1, n, memo) +
                            unique_paths(m, n - 1, memo)

        memo["#{n}x#{m}"] = memo["#{m}x#{n}"]
        memo["#{m}x#{n}"]
      end

      def run
        unique_paths(@input[:m], @input[:n])
      end
    end
  end
end
