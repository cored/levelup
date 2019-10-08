module CountDupsSortedArray
  extend self

  def call(nums, target)
    return 0 if nums.empty?
    freq(nums, 0, nums.size - 1, target)
  end

  def freq(nums, low, high, target, acc = 0)
    return acc if low > high
    mid = (low + high) / 2
    if nums[mid] < target
      freq(nums, mid + 1, high, target, acc)
    elsif nums[mid] > target
      freq(nums, low, mid - 1, target, acc)
    else
      acc += 1
      freq(nums, mid + 1, high, target, acc)
    end
  end
end

describe CountDupsSortedArray do
  it "returns the frequency of a given target" do
    expect(CountDupsSortedArray.call([], 1)).to eql 0
    expect(CountDupsSortedArray.call([1], 1)).to eql 1
    expect(CountDupsSortedArray.call([1, 1], 1)).to eql 2
  end
end
