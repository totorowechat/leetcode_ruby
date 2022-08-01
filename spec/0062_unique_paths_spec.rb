# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::UniquePaths do
  describe 'Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.' do
    it '' do
      input = { m: 3, n: 7 }
      instance = LeetcodeRuby::UniquePaths::Solution.new(input)
      expect(instance.run).to eq(28)
    end
  end
end
