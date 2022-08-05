# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::PlusOne do
  describe '' do
    it '' do
      input = [1, 2, 3]
      instance = LeetcodeRuby::PlusOne::Solution.new(input)
      expect(instance.run).to eq([1, 2, 4])
    end

    it '' do
      input = [4, 3, 2, 1]
      instance = LeetcodeRuby::PlusOne::Solution.new(input)
      expect(instance.run).to eq([4, 3, 2, 2])
    end

    it '' do
      input = [9]
      instance = LeetcodeRuby::PlusOne::Solution.new(input)
      expect(instance.run).to eq([1, 0])
    end
  end
end
