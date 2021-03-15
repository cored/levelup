module PlusOne
  extend self

  def call(nums)
    nums.map.with_index do |n, idx|
      n += 1 if idx == nums.size - 1
      n
    end.flat_map do |n|
      if n > 9
        n.to_s.split(//).map(&:to_i)
      else
        n
      end
    end
  end
end

describe PlusOne do
  it "add a plus one to the most significant digit in a non-empty list of numbers" do
    expect(PlusOne.call([1])).to eql [2]
    expect(PlusOne.call([9])).to eql [1, 0]
    expect(PlusOne.call([1, 2])).to eql [1, 3]
    expect(PlusOne.call([1, 9])).to eql [1, 1, 0]
  end
end
