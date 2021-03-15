module RotateArray
  extend self

  def call(nums, k)
    return nums if nums.empty?
    1.upto(k) do
      nums.unshift(nums.pop)
    end
    nums
  end
end

describe RotateArray do
  it "rorates an array by K steps" do
    expect(RotateArray.call([], 1)).to eql []
    expect(RotateArray.call([1], 1)).to eql [1]
    expect(RotateArray.call([1, 2], 1)).to eql [2, 1]
    expect(RotateArray.call([1, 2], 2)).to eql [1, 2]
    expect(RotateArray.call([1, 2, 3], 1)).to eql [3, 1, 2]
    expect(RotateArray.call([1, 2, 3], 2)).to eql [2, 3, 1]
    expect(RotateArray.call([1, 2, 3], 3)).to eql [1, 2, 3]
    expect(RotateArray.call([1, 2, 3, 4, 5, 6, 7], 3)).to eql [5, 6, 7, 1, 2, 3, 4]
    expect(RotateArray.call([-1, -100, 3, 99], 2)).to eql [3,99,-1,-100]
  end
end
