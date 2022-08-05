# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::MinimumPathSum do
  describe '' do
    it '' do
      input = [[1, 3, 1], [1, 5, 1], [4, 2, 1]]
      instance = LeetcodeRuby::MinimumPathSum::Solution.new(input)
      expect(instance.run).to eq(7)
    end

    it '' do
      input = [[1, 2, 3], [4, 5, 6]]
      instance = LeetcodeRuby::MinimumPathSum::Solution.new(input)
      expect(instance.run).to eq(12)
    end

    it '' do
      input = [[1]]
      instance = LeetcodeRuby::MinimumPathSum::Solution.new(input)
      expect(instance.run).to eq(1)
    end
  end
end
