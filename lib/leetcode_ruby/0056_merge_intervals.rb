# frozen_string_literal: true

module LeetcodeRuby
  module MergeIntervals
    module Refinement
      refine Array do
        def overlap_with?(array)
          last >= array.first
        end
      end
    end
  end

  module MergeIntervals
    using Refinement

    def merge_overlap_intervals(a, b)
      [a[0], [a[1], b[1]].max]
    end

    def merge_intervals(intervals)
      return if intervals.nil? || intervals.length.zero?

      intervals.sort! { |a, b| a.first <=> b.first }
      merged = [].push intervals.shift
      intervals.each do |interval|
        last = merged.last
        if last.overlap_with?(interval)
          merged.pop
          merged.push(merge_overlap_intervals(last, interval))
        else
          merged.push interval
        end
      end
      merged
    end
  end
end
