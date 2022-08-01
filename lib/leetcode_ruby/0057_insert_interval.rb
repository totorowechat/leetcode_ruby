# frozen_string_literal: true

module LeetcodeRuby
  module InsertInterval
    include MergeIntervals

    def insert(intervals, new_interval)
      merge_intervals(intervals.push(new_interval))
    end
  end
end
