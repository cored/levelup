module FrequencySort
  extend self

  def call(s)
    s.chars.each_with_object(Hash.new(0)) do |c, h|
      h[c] += 1
    end.sort { |a, b| b[1] <=> a[1] }.reduce("") do |res, kv|
      res += kv[0] * kv[1]
      res
    end
  end
end

describe FrequencySort do
  it "returns a sorted string with the most frequent chars first" do
    expect(FrequencySort.call("tree")).to eql("eetr")
    expect(FrequencySort.call("raaeaedere")).to eql("eeeeaaarrd")
  end
end

