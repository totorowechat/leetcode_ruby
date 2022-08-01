# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::SpiralMatrixII do
  describe 'Given a positive integer n' do
    it 'generate an n x n matrix filled with elements from 1 to n2 in spiral order.' do
      input = 3
      instance = LeetcodeRuby::SpiralMatrixII::Solution.new(input)
      expect(instance.run).to eq([[1, 2, 3], [8, 9, 4], [7, 6, 5]])

      input = 1
      instance = LeetcodeRuby::SpiralMatrixII::Solution.new(input)
      expect(instance.run).to eq([[1]])
    end
  end
end
