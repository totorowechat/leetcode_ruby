# frozen_string_literal: true

module LeetcodeRuby
  module FindPivotIndex
    class Solution
      def initialize(input)
        @input = input
      end

      def pivot_index(nums)
        sum = nums.reduce(0) { |a, b| a + b }
        left_sum = 0
        nums.each_with_index do |item, idx|
          return idx if left_sum == (sum - left_sum - nums[idx])

          left_sum += item
        end
        -1
      end

      def run
        pivot_index @input
      end
    end
  end
end
