module TwoSums
  extend self

  def call(nums, target)
    comps = nums.each_with_object(Hash.new(0)).with_index do |(n, h), i|
      h[n] = i
    end
    nums.each_with_index do |n, i|
      comp = target - n
      comp_idx = comps[comp]
      if comps.key?(comp) && comp != n
        return [i, comp_idx]
      end
    end
  end
end

describe TwoSums do
  it "returns the indices of the elements that add up to target" do
    expect(TwoSums.call([-1, -2, -3, -4, -5], -8)).to eql [2, 4]
    expect(TwoSums.call([3, 2, 4], 6)).to eql [1, 2]
  end
end
