module RemoveDupsInPlace
  extend self

  def call(nums)
    return [] if nums.empty?
    write_idx = 0
    nums.each_with_index do |n, idx|
      if nums[write_idx] == n
        require 'pry'; binding.pry
        write_idx += 1
        nums[write_idx] = nil
      else
        nums[idx] = n
      end
    end

    nums.compact
  end
end

RSpec.describe RemoveDupsInPlace do
  let(:cases) do
    {
      [] => [],
      [1] => [1],
      [1, 2] => [1, 2],
      [1, 1] => [1],
      [1, 1, 1] => [1],
      [1, 1, 1, 2] => [1, 2],
      [1, 1, 1, 2, 2] => [1, 2],
      [2, 1, 1, 1, 2, 2] => [1, 2],
      # [1, 1, 2] => [1, 2],
      # [1, 2, 1] => [1, 2],
    }
  end

  it "remove duplicates from an array in place" do
    cases.each_pair do |target, expectation|
      expect(RemoveDupsInPlace.(target)).to eql(expectation)
    end
  end

end
