# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::FindPivotIndex do
  describe '' do
    it '' do
      input = [1, 7, 3, 6, 5, 6]
      instance = LeetcodeRuby::FindPivotIndex::Solution.new(input)
      expect(instance.run).to eq(3)
    end
    it '' do
      input = [1, 2, 3]
      instance = LeetcodeRuby::FindPivotIndex::Solution.new(input)
      expect(instance.run).to eq(-1)
    end
    it '' do
      input = [2, 1, -1]
      instance = LeetcodeRuby::FindPivotIndex::Solution.new(input)
      expect(instance.run).to eq(0)
    end

    it '' do
      input = [1]
      instance = LeetcodeRuby::FindPivotIndex::Solution.new(input)
      expect(instance.run).to eq(0)
    end
  end
end
