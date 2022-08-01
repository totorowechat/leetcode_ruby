# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::PermutationSequence do
  it '' do
    input = { n: 3, k: 3 }
    instance = LeetcodeRuby::PermutationSequence::Solution.new(input)
    expect(instance.run).to eq('213')
  end
end
