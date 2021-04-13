module TwoSum
  extend self

  def call(nums, target)
    res = []
    return res if nums.empty?

    nums.each_with_index.each_with_object({}) do |(n, idx), complements|
      complement = (n - target).abs

      if complements.include?(complement)
        res << idx
        res << complements[complement]
        return res
      end

      complements[n] = idx
    end

  end

end

RSpec.describe TwoSum do
  let(:cases) do
    {
       [[], 0] => [],
       [[1, 1], 2] => [0, 1],
       [[0, 1, 1], 2] => [1, 2],
      [[2, 7, 11, 15], 9] => [0, 1],
       [[3, 2, 4], 6] => [1, 2]
    }
  end

  it 'returns the two indexes of numbers in an array that add up to a target' do
    cases.each_pair do |input, expectation|
      expect(TwoSum.(*input)).to match_array(expectation)
    end
  end

end
