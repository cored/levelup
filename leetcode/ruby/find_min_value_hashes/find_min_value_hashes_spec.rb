module FindMinValueHashes
  extend self

  def call(hashes, key)
    hashes.each_with_object([]) do |hash, temp|
      temp << [[key, hash[key]]]
    end.min_by do |temp_hash|
      temp_hash.last
    end.to_h
  end
end

describe FindMinValueHashes do
  it "returns the minimum value from a list of hashes" do
    expect(
      FindMinValueHashes.call(
        [
          {a: 3, b: 2, c: 1},
          {a: 1, b: 3, c: 4},
          {a: 10, b: 8, c: 3},
        ],
        :a
      )
    ).to eql({a: 1})
  end
end
