# frozen_string_literal: true

module LeetcodeRuby
  module RotateList
    class ListNode
      attr_accessor :val, :next

      def initialize(val = 0, next_node = nil)
        @val = val
        @next = next_node
      end
    end

    class ListNode
      def size
        return 1 if @next.nil?

        1 + @next.size
      end

      def nth(n)
        return self if n.zero?
        return nil if @next.nil?

        @next.nth(n - 1)
      end

      def tail
        return self if @next.nil?

        @next.tail
      end

      def to_a
        return [] << @val if @next.nil?

        ([] << @val) + @next.to_a
      end
    end

    class Solution
      def initialize(input)
        @input = input
      end

      # Definition for singly-linked list.
      # class ListNode
      #     attr_accessor :val, :next
      #     def initialize(val = 0, _next = nil)
      #         @val = val
      #         @next = _next
      #     end
      # end
      # @param {ListNode} head
      # @param {Integer} k
      # @return {ListNode}
      def self.build_list(array)
        return nil if array.empty?

        ListNode.new(array.shift, build_list(array))
      end

      def rotate_right(head, k)
        return [] if head.nil?

        size = head.size
        k = k % size
        return head if k.zero?

        cut_line = size - k
        node = head.nth(cut_line - 1)
        tmp = node.next
        tail = node.tail
        node.next = nil
        tail.next = head
        tmp
      end

      def run
        rotate_right(@input[:head], @input[:k]).to_a
      end
    end
  end
end
