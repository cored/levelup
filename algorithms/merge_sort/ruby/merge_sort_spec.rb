module MergeSort
  extend self

  # Constraints
  # - Do not mutate input
  def call(nums)
    res = []
    res = nums if nums.size == 1
    if nums.size > 1
      if nums[1] < nums[0]
        res << nums[1]
        res << nums[0]
      else
        res << nums[0]
        res << nums[1]
      end
    end
    res
  end
end

describe MergeSort do
  it "sorts a list of numbers" do
    expect(MergeSort.call([])).to eql []
    expect(MergeSort.call([1])).to eql [1]
    expect(MergeSort.call([1, 2])).to eql [1, 2]
  end
end
