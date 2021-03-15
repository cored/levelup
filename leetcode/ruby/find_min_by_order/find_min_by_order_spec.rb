module FindMinByOrder
  extend self

  def call(hashes, order_keys)
    hashes.each_with_object([]) do |hash, res|
      order_keys.each do |key|
        res << [[key, hash[key]]]
      end
    end.sort_by do |kv|
      kv.min_by { |jv| jv.last }
    end
  end
end

describe FindMinByOrder do
  it "returns the minimal value by order using a list of keys as fallback" do
    expect(
      FindMinByOrder.call(
        [{a: 1, b: 2, c: 3},
         {b: 1, a: 5, c: 4}],
      [:a, :b]
      )
    ).to match([{a: 1}, {b: 1}])
  end
end
