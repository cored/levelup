module MaxConsecutiveOnes
  extend self

  def call(nums)
    max = 0
    ones = 0

    nums.each do |n|
      if n == 1
        ones += 1
      else
        ones = 0
      end
      max = [max, ones].max

    end

    max
  end
end

RSpec.describe MaxConsecutiveOnes do
  subject(:max_cons) { described_class}
  let(:cases) do
    {
      [] => 0,
      [0] => 0,
      [1] => 1,
      [0, 1] => 1,
      [0, 1, 1] => 2,
      [0, 1, 1, 1] => 3,
      [1, 0, 1, 1, 1] => 3,
      [1, 1, 0, 1, 1, 1] => 3,
    }
  end

  it 'find the maximum conosecutive ones in a binary array' do
    cases.each_pair do |target, expectation|
      expect(max_cons.(target)).to eql expectation
    end
  end
end
