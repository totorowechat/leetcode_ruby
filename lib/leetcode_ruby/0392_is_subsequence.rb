# frozen_string_literal: true

module LeetcodeRuby
  module IsSubsequence
    class Solution
      def initialize(input)
        @input = input
      end

      def is_subsequence(s, t)
        s_idx = 0
        t.each_char do |c|
          s_idx += 1 if s[s_idx] == c
        end
        s_idx == s.size
      end

      def run
        is_subsequence(@input.first, @input.last)
      end
    end
  end
end
