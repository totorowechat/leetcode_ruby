# frozen_string_literal: true

module LeetcodeRuby
  module LengthOfLastWord
    # @param {String} s
    # @return {Integer}
    def length_of_last_word(s)
      s = s.strip
      index = s.size - 1
      count = 0
      s.size.times do
        return count if s[index] == ' '

        count += 1
        index -= 1
      end
    end
  end
end
