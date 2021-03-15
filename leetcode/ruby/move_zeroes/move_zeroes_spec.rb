module MoveZeroes
  extend self

  def call(nums)
    return nums if nums.empty? || nums.size == 1
    idx = nums.size - 1

    nums = nums.sort
    while idx > 0
      nums.unshift(nums.pop) unless nums[idx].zero?
      idx -= 1
    end
    nums
  end
end

describe MoveZeroes do
  it "move all the zeroes on an array to the end of the array in place" do
    expect(MoveZeroes.call([])).to eql []
    expect(MoveZeroes.call([1])).to eql [1]
    expect(MoveZeroes.call([1, 0])).to eql [1, 0]
    expect(MoveZeroes.call([0, 1])).to eql [1, 0]
    expect(MoveZeroes.call([1, 1, 0])).to eql [1, 1, 0]
    expect(MoveZeroes.call([1, 0, 0])).to eql [1, 0, 0]
    expect(MoveZeroes.call([0, 1, 1])).to eql [1, 1, 0]
    expect(MoveZeroes.call([0, 0, 1, 0])).to eql [1, 0, 0, 0]
  end
end
