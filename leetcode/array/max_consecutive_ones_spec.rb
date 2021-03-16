module MaxConsecutiveOnes
  extend self

  def call(nums)
    0
  end
end

RSpec.describe MaxConsecutiveOnes do
  subject(:max_cons) { described_class}
  let(:cases) do
    {
      [] => 0,
      [0] => 0,
    }
  end

  it 'find the maximum conosecutive ones in a binary array' do
    cases.each_pair do |target, expectation|
      expect(max_cons.(target)).to eql expectation
    end
  end
end
