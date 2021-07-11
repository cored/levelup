module RemoveDupsSorted
  extend self

  def call(nums)
    return [] if nums.empty?
    idx = 0
    while idx < nums.size
      if nums[idx] == nums[idx + 1]
      idx += 1
    end
    nums
  end
end

describe RemoveDupsSorted do
  it "remove duplicates from a sorted array" do
    expect(RemoveDupsSorted.call([])).to match([])
    expect(RemoveDupsSorted.call([1])).to match([1])
    expect(RemoveDupsSorted.call([1, 2])).to match([1, 2])
    expect(RemoveDupsSorted.call([1, 1])).to match([1])
    expect(RemoveDupsSorted.call([1, 1, 2])).to match([1, 2])
    expect(RemoveDupsSorted.call([1, 1, 2, 3])).to match([1, 2, 3])
    expect(RemoveDupsSorted.call([2, 3, 1, 1])).to match([1, 2, 3])
    # expect(RemoveDupsSorted.call([1, 2])).to match([1, 2])
    # expect(RemoveDupsSorted.call([1, 1, 2])).to match([1, 2])
    # expect(RemoveDupsSorted.call([0, 0, 1, 1, 1, 2, 2, 3, 3, 4])).to match([0, 1, 2, 3, 4])
  end
end
