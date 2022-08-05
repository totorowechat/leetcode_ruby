# frozen_string_literal: true

module LeetcodeRuby
  module PlusOne
    class Integer
      def initialize(digits)
        @digits = digits
        @carry = 0
      end

      def size
        @digits.size
      end

      def plus_one
        index = size - 1
        loop do
          if index.negative?
            @digits.unshift(1)
            return self
          end
          num = @digits[index]
          if num == 9
            @digits[index] = 0
            carry = 1
            index -= 1
          else
            @digits[index] += 1
            carry = 0
          end
          break if carry.zero?
        end
        self
      end

      def to_a
        @digits
      end
    end

    class Solution
      def initialize(input)
        @input = input
      end

      def run
        Integer.new(@input).plus_one.to_a
      end
    end
  end
end
