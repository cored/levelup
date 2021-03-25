module JewelsAndStones
  extend self

  def call(jewels, stones)
    return 0 if jewels.to_s.empty? || stones.to_s.empty?
    grouped_jewels = jewels.chars.each_with_object({}) do |jewel, potential|
      potential[jewel] = true
    end

    stones.chars.count { |stone| grouped_jewels[stone] }
  end


end

RSpec.describe JewelsAndStones do
  let(:cases) do
    {
      [nil, nil] => 0,
      ["", ""] => 0,
      ["a", "a"] => 1,
      ["aa", "ababa"] => 3,
      ["aA", "aAAbbbb"] => 3,
    }
  end

  it "count jewels in a batch of stones" do
    cases.each_pair do |target, expectation|
      expect(JewelsAndStones.(*target)).to eql expectation
    end
  end


end
