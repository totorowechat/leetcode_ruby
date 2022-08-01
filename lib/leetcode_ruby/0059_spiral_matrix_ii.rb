# frozen_string_literal: true

module LeetcodeRuby
  module SpiralMatrixII
    class SpiralMatrix
      def initialize(size)
        @size = size
        # @matrix = Array.new(size) { Array.new(size) }
        @direction = :east
        @curr_row = 0
        @curr_col = 0
        @min_row = 0
        @max_row = @size - 1
        @min_col = 0
        @max_col = @size - 1
      end

      def move
        raise StandardError, "reach end, can't move" if (@min_row == @max_row) && (@max_col == @min_col)

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
        { row: @curr_row, col: @curr_col }
      end
    end

    class SpiralMatrixII < SpiralMatrix
      alias spiral_matrix_move move

      attr_reader :matrix

      def initialize(size)
        super(size)
        @matrix = Array.new(size) { Array.new(size) }
        @matrix[0][0] = 1
        @step_count = 2
      end

      def move
        spiral_matrix_move
        @matrix[@curr_row][@curr_col] = @step_count
        @step_count += 1
        { row: @curr_row, col: @curr_col }
      end
    end

    class Solution
      def initialize(input)
        @input = input
      end

      # @param {Integer} n
      # @return {Integer[][]}
      def generate_matrix(n)
        m = SpiralMatrixII.new(n)
        (n**2 - 1).times do
          m.move
        end
        m.matrix
      end

      def run
        generate_matrix(@input)
      end
    end
  end
end
