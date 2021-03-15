module MaxProfit
  extend self

  def call(prices)
  end
end

describe MaxProfit do
  it "returns the max profit for a list of prices" do
    expect(MaxProfit.call([2, 4, 1])).to eql 2
  end
end
