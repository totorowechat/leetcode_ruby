# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::InsertInterval do
  let(:instance) { Object.new.extend LeetcodeRuby::InsertInterval }
  it 'insert interval' do
    intervals = [[1, 3], [6, 9]]
    new_interval = [2, 5]

    expect(instance.insert(intervals, new_interval)).to eq([[1, 5], [6, 9]])
  end
end
