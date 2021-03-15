module RangeSortedArray
  extend self

  def call(nums, target)
    return [] if nums.empty?
    search(nums, 0, nums.size, target)
  end

  def search(nums, low, high, target, aux = [])
    return aux if low > high
    mid = (low + high) / 2
    if nums[mid] < target
      search(nums, mid + 1, high, target, aux)
    elsif nums[mid] > target
      search(nums, low, mid - 1, target, aux)
    else
      aux << mid
      search(nums, low + 1, mid, target, aux)
    end
  end
end

describe RangeSortedArray do
  it "returns the range of a target with a sorted array" do
    # expect(RangeSortedArray.call([], 0)).to match_array([])
    # expect(RangeSortedArray.call([1], 0)).to match_array([])
    # expect(RangeSortedArray.call([1], 1)).to match_array([0])
    # expect(RangeSortedArray.call([2, 1], 1)).to match_array([1])
    expect(RangeSortedArray.call([2, 1, 1], 1)).to match_array([1, 2])
    # expect(RangeSortedArray.call([1, 2, 2, 2, 2, 3, 4, 5, 6], 2)).to match_array([1, 4])
  end
end
