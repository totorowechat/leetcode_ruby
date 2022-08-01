# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::RotateList do
  it 'Given the head of a linked list, rotate the list to the right by k places.' do
    input = { head: LeetcodeRuby::RotateList::Solution.build_list([1, 2, 3, 4, 5]),
              k: 2 }
    instance = LeetcodeRuby::RotateList::Solution.new(input)
    expect(instance.run).to eq([4, 5, 1, 2, 3])
  end

  it '' do
    input = { head: LeetcodeRuby::RotateList::Solution.build_list([1, 2, 3, 4, 5]),
              k: 5 }

    instance = LeetcodeRuby::RotateList::Solution.new(input)
    expect(instance.run).to eq([1, 2, 3, 4, 5])
  end

  it '' do
    input = { head: LeetcodeRuby::RotateList::Solution.build_list([]),
              k: 0 }

    instance = LeetcodeRuby::RotateList::Solution.new(input)
    expect(instance.run).to eq([])
  end
end
