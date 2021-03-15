module ProductWithoutSelf
  extend self

  def call(nums)
    nums.map do |n|
      nums.reject { |num| num == n }
    end.map do |sets|
      sets.reduce(1, :*) if !sets.empty?
    end
  end
end

describe ProductWithoutSelf do
  it "returns the product for every element without itself" do
    # expect(ProductWithoutSelf.call([1, 2, 3, 4]))
    #   .to match([24, 12, 8, 6])

    expect(ProductWithoutSelf.call([0, 0]))
      .to match([0, 0])
  end
end
