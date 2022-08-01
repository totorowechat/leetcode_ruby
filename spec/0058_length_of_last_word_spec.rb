# frozen_string_literal: true

require 'leetcode_ruby'

RSpec.describe LeetcodeRuby::LengthOfLastWord do
  let(:instance) { Object.new.extend LeetcodeRuby::LengthOfLastWord }
  it '' do
    input = 'Hello World'
    expect(instance.length_of_last_word(input)).to eq(5)
  end
end
