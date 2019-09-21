module FirstUniqueCharStr
  extend self

  def call(s)
    chars = s.chars
    freq = chars.each_with_object(Hash.new(0)) do |c, freq|
      freq[c] += 1
    end
    chars.each_with_index do |c, idx|
      return idx if freq[c] == 1
    end
    -1
  end
end

describe FirstUniqueCharStr do
  it "returns the index of the first non repeated char in a given string" do
    expect(FirstUniqueCharStr.call("")).to eql -1
    expect(FirstUniqueCharStr.call("a")).to eql 0
    expect(FirstUniqueCharStr.call("aab")).to eql 2
    expect(FirstUniqueCharStr.call("baa")).to eql 0
    expect(FirstUniqueCharStr.call("leetcode")).to eql 0
    expect(FirstUniqueCharStr.call("loveleetcode")).to eql 2
  end
end
