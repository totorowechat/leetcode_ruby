# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::UniquePathsII do
  describe '' do
    it '' do
      input = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
      instance = LeetcodeRuby::UniquePathsII::Solution.new(input)
      expect(instance.run).to eq(2)
    end

    it '' do
      input = [[0, 1], [0, 0]]
      instance = LeetcodeRuby::UniquePathsII::Solution.new(input)
      expect(instance.run).to eq(1)
    end
  end
end
