module MoveZeroes
  extend self

  def call(nums)
    return nums if nums.size == 1
    jdx = 0
    idx = 0

    while idx < nums.size
      if nums[idx] != 0
        nums[idx], nums[jdx] = nums[jdx], nums[idx]
        jdx += 1
      end
      idx += 1
    end

    nums
  end

end

RSpec.describe MoveZeroes do

  let(:cases) do
    {
      [] => [],
      [0] => [0],
      [1, 0] => [1, 0],
      [0, 1] => [1, 0],
      [1, 0, 0] => [1, 0, 0],
      [0, 1, 0] => [1, 0, 0],
      [0, 0, 1] => [1, 0, 0],
      [0, 1, 0, 3] => [1, 3, 0, 0],
      [0, 1, 0, 3] => [1, 3, 0, 0],
      [0, 1, 0, 3, 12] => [1, 3, 12, 0, 0]
    }
  end

  it 'shift all the zeroes to the right of the array' do
    cases.each_pair do |target, expectation|
      expect(MoveZeroes.(target)).to match expectation
    end
  end
end
