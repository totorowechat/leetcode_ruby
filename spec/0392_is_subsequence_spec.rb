# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::IsSubsequence do
  describe '' do
    it '' do
      input = %w[abc ahbgdc]
      instance = LeetcodeRuby::IsSubsequence::Solution.new(input)
      expect(instance.run).to eq(true)
    end
  end
end
