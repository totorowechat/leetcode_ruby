# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::SpiralMatrix do
  let(:spiral_matrx) { LeetcodeRuby::SpiralMatrix }
  describe 'spiral_order' do
    it 'Given an m x n matrix, return all elements of the matrix in spiral order.' do
      matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      expect(spiral_matrx.spiral_order(matrix)).to eq([1, 2, 3, 6, 9, 8, 7, 4, 5])
    end

    it 'Given an m x n matrix, return all elements of the matrix in spiral order.' do
      matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
      expect(spiral_matrx.spiral_order(matrix)).to eq([1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7])
    end
  end
end
