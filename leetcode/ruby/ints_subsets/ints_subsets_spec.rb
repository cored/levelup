module IntsSubsets
  extend self

  def call(a, b)
    if a.size < b.size
      small = a
      big = b
    else
      small = b
      big = a
    end

    h = big.each_with_object(Hash.new(false)) do |n, h|
      h[n] = true
    end

    small.all? { |n| h[n] }
  end
end

describe IntsSubsets do
  it "returns true if one array is a subset of the other" do
    expect(IntsSubsets.call([], [])).to be_truthy
    expect(IntsSubsets.call([1], [1])).to be_truthy
    expect(IntsSubsets.call([1], [1, 2])).to be_truthy
    expect(IntsSubsets.call([1, 1], [1, 2])).to be_falsy
    expect(IntsSubsets.call([1, 3, 5, 7], [1, 3, 5])).to be_truthy
  end
end
