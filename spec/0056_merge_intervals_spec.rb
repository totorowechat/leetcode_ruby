# frozen_string_literal: true

require 'leetcode_ruby'
class MergeIntervalsRefinementTest
  using LeetcodeRuby::MergeIntervals::Refinement
  def overlap(a, b)
    a.overlap_with?(b)
  end
end

RSpec.describe LeetcodeRuby::MergeIntervals do
  let(:instance) { Object.new.extend LeetcodeRuby::MergeIntervals }

  context 'overlap? of Array class' do
    it 'check if two array are overlapped' do
      expect(MergeIntervalsRefinementTest.new.overlap([1, 3], [2, 4])).to eq(true)
    end
  end

  context 'two intervals overlapped' do
    it 'merges two intervals' do
      instance.merge_overlap_intervals([1, 3], [2, 4])
    end
  end

  describe 'merge intervals' do
    it 'Given an array of intervals' do
      intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
      expect(instance.merge_intervals(intervals)).to eq([[1, 6], [8, 10], [15, 18]])
    end
    it '' do
      intervals = [[1, 4], [4, 5]]
      expect(instance.merge_intervals(intervals)).to eq([[1, 5]])
    end

    it '' do
      intervals = [[1, 4], [0, 4]]
      expect(instance.merge_intervals(intervals)).to eq([[0, 4]])
    end

    it '' do
      intervals = [[2, 3], [2, 2], [3, 3], [1, 3], [5, 7], [2, 2], [4, 6]]
      expect(instance.merge_intervals(intervals)).to eq([[1, 3], [4, 7]])
    end

    it '' do
      intervals = [[1, 3], [2, 3], [2, 2], [2, 2], [3, 3], [4, 6], [5, 7]]
      expect(instance.merge_intervals(intervals)).to eq([[1, 3], [4, 7]])
    end
  end
end
