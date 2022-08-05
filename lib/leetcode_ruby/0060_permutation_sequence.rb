# frozen_string_literal: true

module LeetcodeRuby
  module PermutationSequence
    class Solution
      def initialize(input)
        @input = input
      end

      def factorial(n)
        return 1 if [0, 1].include?(n)

        n * factorial(n - 1)
      end

      def find_kth_permutation(v, k, result)
        return if !v || v.empty?

        n = v.length
        # count is number of permutations starting with first digit
        count = factorial(n - 1)
        selected = ((k - 1) / count).floor
        result[0] += (v[selected]).to_s
        v -= v.slice(selected, 1)
        k -= (count * selected)

        find_kth_permutation(v, k, result)
      end

      def get_permutation(n, k)
        v = []
        (0..n - 1).each do |i|
          v.push(i + 1)
        end
        result = ['']
        find_kth_permutation(v, k, result)
        result[0]
      end

      def run
        get_permutation(@input[:n], @input[:k])
      end
    end
  end
end
