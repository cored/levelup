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

    small.each_with_object(Hash.new(false)).with_index do |(n, h), idx|
      if h[n]
        return false if h[n] != big[idx]
      else
        h[n] = true
      end
    end
    true
  end
end

describe IntsSubsets do
  it "returns true if one array is a subset of the other" do
    # expect(IntsSubsets.call([], [])).to be_truthy
    # expect(IntsSubsets.call([1], [1])).to be_truthy
    # expect(IntsSubsets.call([1], [1, 2])).to be_truthy
    # expect(IntsSubsets.call([1, 1], [1, 2])).to be_falsy
    # expect(IntsSubsets.call([1, 3, 5, 7], [1, 3, 5])).to be_truthy
    expect(IntsSubsets.call((1..1000000000000000000000000).to_a, [1, 3, 5])).to be_truthy
  end
end
