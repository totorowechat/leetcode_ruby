# frozen_string_literal: true

module LeetcodeRuby
  module SpiralMatrix
    class Item
      def initialize(matrix)
        @matrix = matrix
        @direction = :east
        @curr_row = 0
        @curr_col = 0
        @min_row = 0
        @max_row = matrix.size - 1
        @min_col = 0
        @max_col = matrix[0].size - 1

        @size = matrix[0].size * matrix.size
        @res = [].push(matrix[0][0])
      end

      def move
        case @direction
        when :east
          if @curr_col == @max_col
            @direction = :south
            @min_row += 1
          end
        when :south
          if @curr_row == @max_row
            @direction = :west
            @max_col -= 1
          end
        when :west
          if @curr_col == @min_col
            @direction = :north
            @max_row -= 1
          end
        when :north
          if @curr_row == @min_row
            @direction = :east
            @min_col += 1
          end
        end

        case @direction
        when :east
          @curr_col += 1
        when :south
          @curr_row += 1
        when :west
          @curr_col -= 1
        when :north
          @curr_row -= 1
        end
        @res.push(@matrix[@curr_row][@curr_col])
        @matrix[@curr_row][@curr_col]
      end

      attr_reader :res, :size
    end

    # @param {Integer[][]} matrix
    # @return {Integer[]}
    def self.spiral_order(matrix)
      item = Item.new(matrix)
      (item.size - 1).times do
        item.move
      end
      item.res
    end
  end
end
