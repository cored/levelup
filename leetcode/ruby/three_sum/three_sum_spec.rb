module ThreeSum
  extend self

  def call(nums)
    res = []
    if nums.size > 2
      potential = [nums[0], nums[1], nums[2]]
      if potential.reduce(0, :+).zero?
        res << potential
      end
    end
    res
  end
end

describe ThreeSum do
  it "returns all the sets that add up to zero in an array" do
    expect(ThreeSum.call([])).to match_array([])
    expect(ThreeSum.call([1])).to match_array([])
    expect(ThreeSum.call([1, 2])).to match_array([])
    expect(ThreeSum.call([1, 2, 1])).to match_array([])
    expect(ThreeSum.call([-1, 0, 1])).to match_array([[-1, 0, 1]])
    expect(
      ThreeSum.call([-1, 0, 1, 2, -1, -4])
    ).to match_array(
      [
        [-1, 0, 1],
        [-1, -1, 2],
      ]
    )
    # expect(ThreeSum.call([-1, 0, 1, 2, -1, -4])).to match_array([
    #   [-1, -1, 2],
    #   [-1, 0, 1],
    # ])

    # expect(ThreeSum.call([5, -600, 1000, -400, 239, -29])).to match_array([
    #   [-1, -1, 2],
    #   [-1, 0, 1],
    # ])
  end
end
